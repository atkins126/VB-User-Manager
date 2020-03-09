unit Main_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.Win.Registry,

  BaseLayout_Frm, VBProxyClass, CommonValues, CommonMethods, CommonFunctions,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, dxBar,
  cxStyles, dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCurrencyEdit, cxTextEdit, cxCheckBox, cxDBNavigator, dxSkinsForm;

type
  TMainFrm = class(TBaseLayoutFrm)
    grdUser: TcxGrid;
    viewUser: TcxGridDBBandedTableView;
    lvlUser: TcxGridLevel;
    edtID: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtLastName: TcxGridDBBandedColumn;
    edtLoginName: TcxGridDBBandedColumn;
    edtEmailAddress: TcxGridDBBandedColumn;
    edtPassword: TcxGridDBBandedColumn;
    cbxAccountEnabled: TcxGridDBBandedColumn;
    grdAvailable: TcxGrid;
    viewAvailable: TcxGridDBBandedTableView;
    lvlAvailable: TcxGridLevel;
    grdAssigned: TcxGrid;
    viewAssigned: TcxGridDBBandedTableView;
    lvlAssigned: TcxGridLevel;
    navUser: TcxDBNavigator;
    sknController: TdxSkinController;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateApplicationSkin(SkinResourceFileName, SkinName: string);
  public
    { Public declarations }
  end;

var
  MainFrm: TMainFrm;

implementation

{$R *.dfm}

uses
User_DM,
VBBase_DM,
RUtils,
MsgDialog_Frm, VBCommonValues;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'User Manager';
//  Self.Width :=
//  Self.Height :=
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
end;

procedure TMainFrm.FormShow(Sender: TObject);
var
  VBShell: string;
  {$IFDEF DEBUG}ErrorMsg, {$ENDIF}SkinResourceFileName, SkinName: string;
  RegKey: TRegistry;
begin
  inherited;
  Screen.Cursor := crHourglass;
  dxBarMakeInactiveImagesDingy := False;
  FSwitchPrefix := ['/'];
  FCallingFromShell := FindCmdLineSwitch('VB_SHELL', VBShell, True, [clstValueNextParam, clstValueAppended]);
//  FShowingForm := True;

  if MsgDialogFrm = nil then
    MsgDialogFrm := TMsgDialogFrm.Create(nil);

  try
    {$IFDEF DEBUG}
    Self.BorderStyle := bsSizeable;
    ErrorMsg := '';
    // Sart the local debug web server if not already running.
    if not LocalDSServerIsRunning(LOCAL_VB_SHELL_DS_SERVER, ErrorMsg) then
    begin
      Beep;
      DisplayMsg(
        Application.Title,
        'Datasnap Server Connection Error',
        'Could not establish a connection to the requested Datasnap server.' + CRLF + CRLF +
        ErrorMsg
        + CRLF + CRLF + 'Please ensure that the local ' + Application.Title + ' Datasnap '
        + CRLF + 'server is running and try again.',
        mtError,
        [mbOK]
        );
    end;
    {$ENDIF}

    if VBBaseDM = nil then
      VBBaseDM := TVBBaseDM.Create(nil);

    if UserDM = nil then
      UserDM := TUserDM.Create(nil);

    VBBaseDM.PopulateUserData;
//    sbrMain.Panels[1].Text := 'User: ' + VBBaseDM.FUserData.UserName;
    VBBaseDM.SetConnectionProperties;
    VBBaseDM.sqlConnection.Open;
    VBBaseDM.Client := TVBServerMethodsClient.Create(VBBaseDM.sqlConnection.DBXConnection);
    VBBaseDM.CheckForUpdates(3, '');
    UserDM.ShellResource := VBBaseDM.GetShellResource;
    SkinResourceFileName := RESOURCE_FOLDER + SKIN_RESOURCE_FILE;
    SkinName := UserDM.ShellResource.SkinName;

    if Length(Trim(SkinName)) = 0 then
      SkinName := DEFAULT_SKIN_NAME;

    UpdateApplicationSkin(SkinResourceFileName, SkinName);

    VBBaseDM.CurrentPeriod := RUtils.CurrentPeriod(Date);
    VBBaseDM.CurrentMonth := RUtils.MonthInt(Date);

  viewUser.DataController.DataSource := UserDM.dtsUser;
  navUser.DataSource :=  UserDM.dtsUser;


    viewTimesheet.DataController.DataSource := TSDM.dtsTimesheet;
    viewTimesheetBillable.DataController.DataSource := ReportDM.dtsTSBillable;
    TcxLookupComboBoxProperties(lucCustomer.Properties).listSource := TSDM.dtsCustomerLookup;
    TcxLookupComboBoxProperties(lucPriceItem.Properties).listSource := TSDM.dtsPriceList;
    TcxLookupComboBoxProperties(lucRateUnit.Properties).listSource := TSDM.dtsRateUnit;
    TcxLookupComboBoxProperties(lucActivityType.Properties).listSource := TSDM.dtsActivityType;
    TcxLookupComboBoxProperties(lucCustomerGroup.Properties).listSource := TSDM.dtsCustomerGroup;
    TcxLookupComboBoxProperties(lucPeriod.Properties).listSource := TSDM.dtsTSPeriod;
    TcxLookupComboBoxProperties(lucUser.Properties).listSource := TSDM.dtsSytemUser;
    TcxDateEditProperties(dteFromDate.Properties).MinDate := StrToDate('01/01/2019');
    TcxDateEditProperties(dteFromDate.Properties).MaxDate := Date;
    TcxDateEditProperties(dteToDate.Properties).MinDate := StrToDate('01/01/2019');
    TcxDateEditProperties(dteToDate.Properties).MaxDate := Date;

    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    try
      RegKey.OpenKey(KEY_USER_DATA, True);
      OpenTables;
      TSDM.CurrentUserID := RegKey.ReadInteger('User ID');

      if not TSDM.cdsSystemUser.Locate('ID', TSDM.CurrentUserID, []) then
      begin
        TSDM.cdsSystemUser.First;
        TSDM.CurrentUserID := TSDM.cdsSystemUser.FieldByName('ID').AsInteger;
      end;
      FTSUserID := TSDM.CurrentUserID;

// lucUser.SetFocus;
// ALookupComboBox := TcxBarEditItemControl(lucUser.Links[0].Control).Edit as TcxLookupComboBox;
// ALookupComboBox.EditValue := TSDM.CurrentUserID;
// TcxLookupComboBox(lucUser).EditValue := TSDM.cdsSystemUser.FieldByName('LOGIN_NAME').AsString;
// lucUser.EditValue := TSDM.CurrentUserID;
      lucUser.EditValue := TSDM.CurrentUserID; // TSDM.cdsSystemUser.FieldByName('LOGIN_NAME').AsString;
      RegKey.CloseKey;

      VerifyRegistry;
      ReadRegValues;

      RegKey.OpenKey(KEY_TIME_SHEET, True);

// dteFromDate.SetFocus;
// ADateEdit := TcxBarEditItemControl(dteFromDate.Links[0].Control).Edit as TcxDateEdit;
// ADateEdit.Date := RegKey.ReadDate('From Date');
      FFromDate := RegKey.ReadDate('From Date');
      dteFromDate.EditValue := FFromDate;

// dteToDate.SetFocus;
// ADateEdit := TcxBarEditItemControl(dteToDate.Links[0].Control).Edit as TcxDateEdit;
// ADateEdit.Date := RegKey.ReadDate('To Date');
      FToDate := RegKey.ReadDate('To Date');
      dteToDate.EditValue := FToDate;

// lucPeriod.SetFocus;
// ALookupComboBox := TcxBarEditItemControl(lucPeriod.Links[0].Control).Edit as TcxLookupComboBox;
      FTimesheetPeriod := RegKey.ReadInteger('Period');
// ALookupComboBox.EditValue := FTimesheetPeriod;
      lucPeriod.EditValue := FTimesheetPeriod;

      if not TSDM.cdsTSPeriod.Locate('THE_PERIOD', FTimesheetPeriod, []) then
      begin
        TSDM.cdsTSPeriod.First;
        FTimesheetPeriod := TSDM.cdsTSPeriod.FieldByName('THE_PERIOD').AsInteger;
      end;

      GetMonthEndDate(FTimesheetPeriod);
// lucViewMode.SetFocus;
// AComboBox := TcxBarEditItemControl(lucViewMode.Links[0].Control).Edit as TcxComboBox;
// AComboBox.ItemIndex := RegKey.ReadInteger('View Mode Index');
      lucViewMode.ItemIndex := RegKey.ReadInteger('View Mode Index');

// lucPeriod.SetFocus;
// ALookupComboBox := TcxBarEditItemControl(lucPeriod.Links[0].Control).Edit as TcxLookupComboBox;
// ALookupComboBox.EditValue := FTimesheetPeriod;
//
// dteFromDate.SetFocus;
// ADateEdit := TcxBarEditItemControl(dteFromDate.Links[0].Control).Edit as TcxDateEdit;
// ADateEdit.Date := RegKey.ReadDate('From Date');
//
// dteToDate.SetFocus;
// ADateEdit := TcxBarEditItemControl(dteToDate.Links[0].Control).Edit as TcxDateEdit;
// ADateEdit.Date := RegKey.ReadDate('To Date');
//
      RegKey.CloseKey;
    finally
      RegKey.Free
    end;

    actGetTimesheetData.Execute;
    FIteration := 0;
    grdTimesheet.SetFocus;
    viewTimesheet.Focused := True;
    if not TSDM.cdsTimesheet.IsEmpty then
    begin
      viewTimesheet.DataController.FocusedRecordIndex := 0;
      viewTimesheet.Controller.FocusedRecord.Selected := True;
      viewTimesheet.Controller.MakeFocusedItemVisible;
    end;

    VBBaseDM.DBAction := acBrowsing;

    if FCallingFromShell then
    begin
      if not SendMessageToApp('VB Shell', 'App Ready') then
      begin
        Beep;
        DisplayMsg(
          Application.Title,
          'Application launch Error',
          'Host application: VB Shell not found!',
          mtError,
          [mbOK]
          );
        Application.Terminate;
      end;
      WindowState := wsMaximized;
    end;
// else
// WindowState := wsMaximized;
  finally
    FShowingForm := False;
    Screen.Cursor := crDefault;
  end;



end;

procedure TMainFrm.UpdateApplicationSkin(SkinResourceFileName,
  SkinName: string);
begin
  sknController.BeginUpdate;
  try
    sknController.NativeStyle := False;
    sknController.UseSkins := True;
    if dxSkinsUserSkinLoadFromFile(SkinResourceFileName, SkinName) then
    begin
      sknController.SkinName := 'UserSkin';
      RootLookAndFeel.SkinName := 'UserSkin';
//      barManager.LookAndFeel.SkinName := 'UserSkin';
      lafCustomSkin.LookAndFeel.SkinName := 'UserSkin';
    end
    else
    begin
      sknController.SkinName := DEFAULT_SKIN_NAME;
      RootLookAndFeel.SkinName := DEFAULT_SKIN_NAME;
//      barManager.LookAndFeel.SkinName := DEFAULT_SKIN_NAME;
      lafCustomSkin.LookAndFeel.SkinName := DEFAULT_SKIN_NAME;
    end;
  finally
    sknController.Refresh;
    sknController.EndUpdate;
  end;

end;

end.

