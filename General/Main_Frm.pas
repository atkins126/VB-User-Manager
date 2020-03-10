unit Main_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.Win.Registry,

  BaseLayout_Frm, VBProxyClass, CommonValues, CommonMethods, CommonFunctions,
  VBCommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, dxBar,
  cxStyles, dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCurrencyEdit, cxTextEdit, cxCheckBox, cxDBNavigator, dxSkinsForm,
  cxDBLookupComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutControlAdapters, dxScreenTip, dxCustomHint, cxHint;

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
    imgNav: TcxImageList;
    litToolbar: TdxLayoutItem;
    litUserGrid: TdxLayoutItem;
    grpRights: TdxLayoutGroup;
    grpAssigned: TdxLayoutGroup;
    grpAssignButtons: TdxLayoutGroup;
    grpAvailable: TdxLayoutGroup;
    grpControlButtons: TdxLayoutGroup;
    litAssigned: TdxLayoutItem;
    litAvailable: TdxLayoutItem;
    edtAVID: TcxGridDBBandedColumn;
    edtAVName: TcxGridDBBandedColumn;
    edtAVDescription: TcxGridDBBandedColumn;
    edtASID: TcxGridDBBandedColumn;
    edtASUserID: TcxGridDBBandedColumn;
    edtRightID: TcxGridDBBandedColumn;
    edtRightName: TcxGridDBBandedColumn;
    edtRightDescription: TcxGridDBBandedColumn;
    btnAssign: TcxButton;
    btnUnAssign: TcxButton;
    btnAssignAll: TcxButton;
    btnUnAssignAll: TcxButton;
    litAssign: TdxLayoutItem;
    litUnAssign: TdxLayoutItem;
    litAssignAll: TdxLayoutItem;
    litUnAssignAll: TdxLayoutItem;
    spc1: TdxLayoutEmptySpaceItem;
    sep1: TdxLayoutSeparatorItem;
    lafLabel: TdxLayoutCxLookAndFeel;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    docToolbar: TdxBarDockControl;
    btnClose: TdxBarLargeButton;
    btnInsert: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnRefresh: TdxBarLargeButton;
    actExit: TAction;
    actInsert: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actRefresh: TAction;
    repScreenTip: TdxScreenTipRepository;
    tipExit: TdxScreenTip;
    tipInsert: TdxScreenTip;
    tipEdit: TdxScreenTip;
    tipDelete: TdxScreenTip;
    tipRefresh: TdxScreenTip;
    tipPreview: TdxScreenTip;
    tipPrint: TdxScreenTip;
    tipPDF: TdxScreenTip;
    tipExcel: TdxScreenTip;
    styHintController: TcxHintStyleController;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure navUserButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure DoExitUserManager(Sender: TObject);
    procedure DoInsert(Sender: TObject);
    procedure DoEdit(Sender: TObject);
    procedure DoDelete(Sender: TObject);
    procedure DoRefresh(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateApplicationSkin(SkinResourceFileName, SkinName: string);
    procedure SetButtonStatus(EditMode: Boolean);
    procedure OpenTables;
  protected
    procedure HandleStateChange(var MyMsg: TMessage); message WM_STATE_CHANGE;
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
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
  MsgDialog_Frm;

procedure TMainFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TMainFrm.HandleStateChange(var MyMsg: TMessage);
var
  EditMode: Boolean;
begin
  EditMode := StringToBoolean(PChar(MyMsg.WParam));
  SetButtonStatus(EditMode);
end;

procedure TMainFrm.DoExitUserManager(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.DoInsert(Sender: TObject);
begin
  inherited;
//  Screen.Cursor := crHourglass;
//
//  try
//    case TAction(Sender).Tag of
//      0: UserDM.cdsTimesheet.Insert;
//      1: UserDM.cdsTimesheet.Edit;
//    end;
//
//    if TimesheetEditFrm = nil then
//      TimesheetEditFrm := TTimesheetEditFrm.Create(nil);
//
//    VBBaseDM.MyDataSet := UserDM.cdsTimesheet;
//    VBBaseDM.MyDataSource := UserDM.dtsTimesheet;
//
//    if TimesheetEditFrm.ShowModal = mrCancel then
//      if UserDM.cdsTimesheet.State in [dsEdit, dsInsert] then
//        UserDM.cdsTimesheet.Cancel;
//
//    actRefresh.Execute;
//
//    TimesheetEditFrm.Close;
//    FreeAndNil(TimesheetEditFrm);
//  finally
//    Screen.Cursor := crDefault;
//  end;
end;

procedure TMainFrm.DoEdit(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.DoDelete(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.DoRefresh(Sender: TObject);
begin
  inherited;
//
end;

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
    navUser.DataSource := UserDM.dtsUser;
    viewAssigned.DataController.DataSource := UserDM.dtsAssigned;
    viewAvailable.DataController.DataSource := UserDM.dtsAvailable;

//    viewTimesheet.DataController.DataSource := TSDM.dtsTimesheet;
//    viewTimesheetBillable.DataController.DataSource := ReportDM.dtsTSBillable;
//    TcxLookupComboBoxProperties(lucPriceItem.Properties).listSource := TSDM.dtsPriceList;
//    TcxLookupComboBoxProperties(lucRateUnit.Properties).listSource := TSDM.dtsRateUnit;
//    TcxLookupComboBoxProperties(lucActivityType.Properties).listSource := TSDM.dtsActivityType;
//    TcxLookupComboBoxProperties(lucCustomerGroup.Properties).listSource := TSDM.dtsCustomerGroup;
//    TcxLookupComboBoxProperties(lucPeriod.Properties).listSource := TSDM.dtsTSPeriod;
//    TcxLookupComboBoxProperties(lucUser.Properties).listSource := TSDM.dtsSytemUser;
//    TcxDateEditProperties(dteFromDate.Properties).MinDate := StrToDate('01/01/2019');
//    TcxDateEditProperties(dteFromDate.Properties).MaxDate := Date;
//    TcxDateEditProperties(dteToDate.Properties).MinDate := StrToDate('01/01/2019');
//    TcxDateEditProperties(dteToDate.Properties).MaxDate := Date;
//
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    try
      RegKey.OpenKey(KEY_USER_DATA, True);
      OpenTables;
      UserDM.CurrentUserID := RegKey.ReadInteger('User ID');

      if not UserDM.cdsUser.Locate('ID', UserDM.CurrentUserID, []) then
      begin
        UserDM.cdsUser.First;
        UserDM.CurrentUserID := UserDM.cdsUser.FieldByName('ID').AsInteger;
      end;
//      FTSUserID := UserDM.CurrentUserID;
//      lucUser.EditValue := UserDM.CurrentUserID;

      RegKey.CloseKey;

//      VerifyRegistry;
//      ReadRegValues;

      RegKey.OpenKey(KEY_TIME_SHEET, True);

      RegKey.CloseKey;
    finally
      RegKey.Free
    end;

    grdUser.SetFocus;
    viewUser.Focused := True;

    if not UserDM.cdsUser.IsEmpty then
    begin
      viewUser.DataController.FocusedRecordIndex := 0;
      viewUser.Controller.FocusedRecord.Selected := True;
      viewUser.Controller.MakeFocusedItemVisible;
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
//    FShowingForm := False;
    Screen.Cursor := crDefault;
  end;

end;

procedure TMainFrm.navUserButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
    NBDI_PRIOR:
      begin
        MainFrm.Close;
      end;
  end;
end;

procedure TMainFrm.OpenTables;
begin
  VBBaseDM.GetData(24, UserDM.cdsUser, UserDM.cdsUser.Name, ONE_SPACE,
    'C:\Data\Xml\System User.xml', UserDM.cdsUser.UpdateOptions.Generatorname,
    UserDM.cdsUser.UpdateOptions.UpdateTableName);

  VBBaseDM.GetData(29, UserDM.cdsUserRight, UserDM.cdsUserRight.Name, ONE_SPACE,
    'C:\Data\Xml\User Right.xml', UserDM.cdsUserRight.UpdateOptions.Generatorname,
    UserDM.cdsUserRight.UpdateOptions.UpdateTableName);

  VBBaseDM.GetData(31, UserDM.cdsAssigned, UserDM.cdsAssigned.Name, ONE_SPACE,
    'C:\Data\Xml\Assigned Right.xml', UserDM.cdsAssigned.UpdateOptions.Generatorname,
    UserDM.cdsAssigned.UpdateOptions.UpdateTableName);

  VBBaseDM.GetData(32, UserDM.cdsAvailable, UserDM.cdsAvailable.Name, ONE_SPACE,
    'C:\Data\Xml\Available Right.xml', UserDM.cdsAvailable.UpdateOptions.Generatorname,
    UserDM.cdsAvailable.UpdateOptions.UpdateTableName);
end;

procedure TMainFrm.SetButtonStatus(EditMode: Boolean);
begin
  actInsert.Enabled := not EditMode;
  actEdit.Enabled := not EditMode;
  actDelete.Enabled := not EditMode;
  actRefresh.Enabled := not EditMode;
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

