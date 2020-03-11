unit Main_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.Win.Registry, Data.DB,
  Vcl.Menus, Vcl.StdCtrls,

  BaseLayout_Frm, VBProxyClass, CommonValues, CommonMethods, CommonFunctions,
  VBCommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, dxBar,
  cxStyles, dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxCurrencyEdit,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxTextEdit, cxCheckBox, cxDBNavigator, dxSkinsForm, cxDBLookupComboBox,
  cxButtons, dxLayoutControlAdapters, dxScreenTip, dxCustomHint, cxHint;

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
    btnRemoveRight: TcxButton;
    btnAssignAll: TcxButton;
    btnRemoveAll: TcxButton;
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
    actAssignRight: TAction;
    actRemoveRight: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DoExitUserManager(Sender: TObject);
    procedure DoInsert(Sender: TObject);
    procedure DoEdit(Sender: TObject);
    procedure DoDelete(Sender: TObject);
    procedure DoRefresh(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

    procedure viewUserCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

    procedure viewUserFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure viewAssignedDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure viewAssignedDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure viewAvailableDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure viewAvailableDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DoAssignRight(Sender: TObject);
    procedure DoRemoveRight(Sender: TObject);
  private
    { Private declarations }
    FRecIndexList: TList;

    procedure UpdateApplicationSkin(SkinResourceFileName, SkinName: string);
    procedure SetButtonStatus(EditMode: Boolean);
    procedure OpenTables;
    procedure GetAssignedRights(UserID: Integer);
    procedure GetAvailableRights(UserID: Integer);
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
  MainFrm.Close;
end;

procedure TMainFrm.DoInsert(Sender: TObject);
begin
  inherited;
// Screen.Cursor := crHourglass;
//
// try
// case TAction(Sender).Tag of
// 0: UserDM.cdsTimesheet.Insert;
// 1: UserDM.cdsTimesheet.Edit;
// end;
//
// if TimesheetEditFrm = nil then
// TimesheetEditFrm := TTimesheetEditFrm.Create(nil);
//
// VBBaseDM.MyDataSet := UserDM.cdsTimesheet;
// VBBaseDM.MyDataSource := UserDM.dtsTimesheet;
//
// if TimesheetEditFrm.ShowModal = mrCancel then
// if UserDM.cdsTimesheet.State in [dsEdit, dsInsert] then
// UserDM.cdsTimesheet.Cancel;
//
// actRefresh.Execute;
//
// TimesheetEditFrm.Close;
// FreeAndNil(TimesheetEditFrm);
// finally
// Screen.Cursor := crDefault;
// end;
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

procedure TMainFrm.DoAssignRight(Sender: TObject);
var
  I, J: Integer;
  C: TcxGridTableController;
  {SL, }InputList, Response: TStringList;
  Request : string;
  DC: TcxDBDataController;
begin
  inherited;
  // First find out if this user has SuperUser rights. If so, then it is not
  // necesary to add any other rights to this user's profile since the SuperUser
  // has full rights.

  try
    if viewAvailable.Controller.SelectedRecordCount = 0 then
    begin
      Beep;
      DisplayMsg(
        Application.Title,
        'Invalid Selection',
        'Invalid user right selection',
        'Please select at least one available right to assign',
        mtError,
        [mbOK],
        False
        );
    // 17/01/2013
    // Using the Exit function here casues the actAssign to be nullified!!!
    // Changed to an if then else statement and no problems.
    // Don't know why this is happening??
//        Exit;
    end
    else
    begin
      Response := RUtils.CreateStringList(Response, PIPE);
      InputList := RUtils.CreateStringList(InputList, SEMI_COLON);
      try
        Screen.Cursor := crHourGlass;
        InputList.Delimiter := COMMA;
        C := viewAvailable.Controller;
        DC := viewAvailable.DataController;

        InputList.Clear;

        for I := 0 to FRecIndexList.Count - 1 do
        begin
          InputList.DelimitedText := InputList.DelimitedText +
            'USER_ID=' + UserDM.CurrentUserID.ToString + SEMI_COLON +
            'RIGHT_ID=' + VarToStr(C.SelectedRecords[I].Values[edtAVID.Index]) + COMMA;
//          InputList.DelimitedText := InputList.DelimitedText +
//            'USER_ID=' + IntToStr(UserSDM.cdsUser.FieldByName('ID').AsInteger) + SEMI_COLON +
//            'RIGHT_ID=' + VarToStr(C.SelectedRecords[I].Values[edtAvailRightID.Index]) + COMMA;
        end;

        for J := InputList.Count - 1 downto 0 do
          if Length(InputList[J]) = 0 then
            InputList.Delete(J);

        Request :=  ' INSERT INTO ASSIGNED_RIGHT(USER_ID, RIGHT_ID) VALUES('+
        UserDM.CurrentUserID.ToString + ',' +
        VarToStr(C.SelectedRecords[I].Values[edtAVID.Index]) + ')';

        Response.DelimitedText :=   VBBaseDM.Client.ExecuteSQLCommand(Request);

        if SL.Values['RESPONSE'] = 'ERROR' then
        begin
          Beep;

          DisplayMsg(
            Application.Title,
            Application.Title + ' - Data Retrieval Error',
            '',
            'An error occurred in trying to post data.' + CRLF +
            SL.Values['MESSAGE'] + CRLF + CRLF +
            SL.Values['SERVER_ERROR_MSG'] + CRLF + CRLF +
            SL.Values['DEBUG_INFO'],
            mtError,
            [mbOK],
            True
            );

//          DisplayMsg(Application.Title,
//            Application.Title + ' - Error Processing Request',
//            '',
//            'An error occurred when trying to assign user rights.',
//            mtError,
//            [mbOK],
//            True
//            );
          Exit;
        end
        else
        begin
        // If user already has Super Admin rights
          if StrToInt(SL.Values['IS_SUPER_ADMIN']) = 1 then
          begin
            Beep;
            DisplayMsg(
              Application.Title,
              Application.Title + ' - No Rights Assigned',
              RCSDM.cdsUser.FieldByName('FIRST_NAME').AsString + ' ' +
              RCSDM.cdsUser.FieldByName('LAST_NAME').AsString +
              ' already has Super Admin rights' + CRLF +
              'and therefore no additional rights need to be ' + CRLF +
              'assigned to this user.',
              '',
              mtInformation,
              [mbOK],
              False
              );
          end
          else
          begin
            GetAvailableUserRight;
            GetUserProfile;
          end;
        end;
      finally
        SL.Free;
        InputList.Free;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoRemoveRight(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if FCallingFromShell then
    SendMessageToApp('VB Shell', 'Close App')
end;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'User Manager';
// Self.Width :=
// Self.Height :=
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
end;

procedure TMainFrm.FormDestroy(Sender: TObject);
begin
  inherited;
  if MsgDialogFrm <> nil then
    FreeAndNil(MsgDialogFrm);

// if Assigned(BaseFrm) then
// FreeAndNil(BaseFrm);

  if Assigned(UserDM) then
    FreeAndNil(UserDM);

  if Assigned(VBBaseDM) then
    FreeAndNil(VBBaseDM);
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
// FShowingForm := True;

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
// sbrMain.Panels[1].Text := 'User: ' + VBBaseDM.FUserData.UserName;
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
    viewUser.DataController.DataSource := UserDM.dtsSystemUser;
    navUser.DataSource := UserDM.dtsSystemUser;
    viewAssigned.DataController.DataSource := UserDM.dtsAssignedRight;
    viewAvailable.DataController.DataSource := UserDM.dtsAvailableRight;

// viewTimesheet.DataController.DataSource := TSDM.dtsTimesheet;
// viewTimesheetBillable.DataController.DataSource := ReportDM.dtsTSBillable;
// TcxLookupComboBoxProperties(lucPriceItem.Properties).listSource := TSDM.dtsPriceList;
// TcxLookupComboBoxProperties(lucRateUnit.Properties).listSource := TSDM.dtsRateUnit;
// TcxLookupComboBoxProperties(lucActivityType.Properties).listSource := TSDM.dtsActivityType;
// TcxLookupComboBoxProperties(lucCustomerGroup.Properties).listSource := TSDM.dtsCustomerGroup;
// TcxLookupComboBoxProperties(lucPeriod.Properties).listSource := TSDM.dtsTSPeriod;
// TcxLookupComboBoxProperties(lucUser.Properties).listSource := TSDM.dtsSytemUser;
// TcxDateEditProperties(dteFromDate.Properties).MinDate := StrToDate('01/01/2019');
// TcxDateEditProperties(dteFromDate.Properties).MaxDate := Date;
// TcxDateEditProperties(dteToDate.Properties).MinDate := StrToDate('01/01/2019');
// TcxDateEditProperties(dteToDate.Properties).MaxDate := Date;
//
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
// viewUser.OnFocusedRecordChanged :=  nil;
    try
      RegKey.OpenKey(KEY_USER_DATA, True);
      UserDM.CurrentUserID := RegKey.ReadInteger('User ID');
      OpenTables;

// if not UserDM.cdsSystemUser.Locate('ID', UserDM.CurrentUserID, []) then
// begin
// UserDM.cdsSystemUser.First;
// UserDM.CurrentUserID := UserDM.cdsSystemUser.FieldByName('ID').AsInteger;
// end;
// FTSUserID := UserDM.CurrentUserID;
// lucUser.EditValue := UserDM.CurrentUserID;

      RegKey.CloseKey;

// VerifyRegistry;
// ReadRegValues;

// RegKey.OpenKey(KEY_TIME_SHEET, True);
//
// RegKey.CloseKey;
    finally
// viewUser.OnFocusedRecordChanged :=  viewUserFocusedRecordChanged;
      RegKey.Free
    end;

    grdUser.SetFocus;
    viewUser.Focused := True;

    if not UserDM.cdsSystemUser.IsEmpty then
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
// FShowingForm := False;
    Screen.Cursor := crDefault;
  end;

end;

procedure TMainFrm.GetAssignedRights(UserID: Integer);
var
  WhereClause: string;
begin
  WhereClause := ' WHERE USER_ID IN (' + UserID.ToString + ')';

  VBBaseDM.GetData(31, UserDM.cdsAssignedRight, UserDM.cdsAssignedRight.Name, WhereClause,
    'C:\Data\Xml\Assigned Right.xml', UserDM.cdsAssignedRight.UpdateOptions.Generatorname,
    UserDM.cdsAssignedRight.UpdateOptions.UpdateTableName);
end;

procedure TMainFrm.GetAvailableRights(UserID: Integer);
var
  WhereClause, OrderByClause: string;
begin
  WhereClause := ' WHERE USER_ID IN (' + UserID.ToString + ')';
  OrderByClause := ' ORDER BY R."NAME"';

// VBBaseDM.GetData(45, ReportDM.cdsTimesheetDetail, ReportDM.cdsTimesheetDetail.Name, WhereClause + ';' + OrderByClause + ';' + GroupByClause,

  VBBaseDM.GetData(32, UserDM.cdsAvailableRight, UserDM.cdsAvailableRight.Name, WhereClause + ';' + OrderByClause,
    'C:\Data\Xml\Available Right.xml', UserDM.cdsAvailableRight.UpdateOptions.Generatorname,
    UserDM.cdsAvailableRight.UpdateOptions.UpdateTableName);
end;

procedure TMainFrm.OpenTables;
begin
  VBBaseDM.GetData(24, UserDM.cdsSystemUser, UserDM.cdsSystemUser.Name, ONE_SPACE,
    'C:\Data\Xml\System User.xml', UserDM.cdsSystemUser.UpdateOptions.Generatorname,
    UserDM.cdsSystemUser.UpdateOptions.UpdateTableName);

  UserDM.CurrentUserID := UserDM.cdsSystemUser.FieldByName('ID').AsInteger;

  VBBaseDM.GetData(29, UserDM.cdsUserRight, UserDM.cdsUserRight.Name, ONE_SPACE,
    'C:\Data\Xml\User Right.xml', UserDM.cdsUserRight.UpdateOptions.Generatorname,
    UserDM.cdsUserRight.UpdateOptions.UpdateTableName);

// GetAssignedRights(UserDM.CurrentUserID);
// GetAvailableRights(UserDM.CurrentUserID);
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
// barManager.LookAndFeel.SkinName := 'UserSkin';
      lafCustomSkin.LookAndFeel.SkinName := 'UserSkin';
    end
    else
    begin
      sknController.SkinName := DEFAULT_SKIN_NAME;
      RootLookAndFeel.SkinName := DEFAULT_SKIN_NAME;
// barManager.LookAndFeel.SkinName := DEFAULT_SKIN_NAME;
      lafCustomSkin.LookAndFeel.SkinName := DEFAULT_SKIN_NAME;
    end;
  finally
    sknController.Refresh;
    sknController.EndUpdate;
  end;

end;

procedure TMainFrm.viewAssignedDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept :=
    TcxGridSite(TDragControlObject(Source).Control).GridView = viewAvailable;
end;

procedure TMainFrm.viewAssignedDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  inherited;
  if TcxGridSite(TDragControlObject(Source).Control).GridView = viewAvailable then
    actAssignRight.Execute;
end;

procedure TMainFrm.viewAvailableDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept :=
    TcxGridSite(TDragControlObject(Source).Control).GridView = viewAssigned;
end;

procedure TMainFrm.viewAvailableDragDrop(Sender, Source: TObject; X,  Y: Integer);
begin
  inherited;
  if TcxGridSite(TDragControlObject(Source).Control).GridView = viewAssigned then
  begin
    actRemoveRight.Execute;
  end;
end;

procedure TMainFrm.viewUserCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord = nil then
    Exit;

  if AViewInfo.GridRecord.Focused then
  // This renders the background and font colours of the focused record
  begin
    if AViewInfo.Item <> nil then
      if AViewInfo.Item.Focused then
      begin
        // This renders the background and border colour of the focused cell
        ACanvas.Brush.Color := $B6EDFA;
        ACanvas.Font.Color := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
        PostMessage(Handle, CM_DRAWBORDER, Integer(ACanvas), Integer(AViewInfo));
      end;
  end;
end;

procedure TMainFrm.viewUserFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  DC: TcxDBDataController;
begin
  inherited;
  if AFocusedRecord = nil then
    Exit;

  DC := viewUser.DataController;
  UserDM.CurrentUserID := DC.Values[DC.FocusedRecordIndex, edtID.Index];
  GetAssignedRights(UserDM.CurrentUserID);
  GetAvailableRights(UserDM.CurrentUserID);
end;

end.

