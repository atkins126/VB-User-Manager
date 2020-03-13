unit User_DM;

interface

uses
  System.SysUtils, System.Classes, VBBase_DM, Vcl.Forms, Data.DBXDataSnap,
  WinApi.Windows,

  CommonValues, VBCommonValues,

  Data.DBXCommon, IPPeerClient,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.SqlExpr, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  FireDAC.DApt;

type
  TUserDM = class(TVBBaseDM)
    VbdevConnection: TFDConnection;
    cdsSystemUser: TFDMemTable;
    dtsSystemUser: TDataSource;
    cdsSystemUserID: TIntegerField;
    cdsSystemUserFIRST_NAME: TStringField;
    cdsSystemUserLAST_NAME: TStringField;
    cdsSystemUserLOGIN_NAME: TStringField;
    cdsSystemUserEMAIL_ADDRESS: TStringField;
    cdsSystemUserPASSWORD: TStringField;
    cdsSystemUserACCOUNT_ENABLED: TIntegerField;
    cdsUserRight: TFDMemTable;
    cdsAssignedRight: TFDMemTable;
    cdsAvailableRight: TFDMemTable;
    dtsUserRight: TDataSource;
    dtsAssignedRight: TDataSource;
    dtsAvailableRight: TDataSource;
    cdsUserRightID: TIntegerField;
    cdsUserRightNAME: TStringField;
    cdsUserRightDESCRIPTION: TStringField;
    cdsUserRightIS_ACTIVE: TIntegerField;
    cdsAssignedRightUSER_ID: TIntegerField;
    cdsAssignedRightRIGHT_ID: TIntegerField;
    cdsAvailableRightID: TIntegerField;
    cdsAvailableRightNAME: TStringField;
    cdsAvailableRightDESCRIPTION: TStringField;
    cdsAssignedRightRIGHT_NAME: TStringField;
    cdsAssignedRightRIGHT_DESC: TStringField;
    cdsSystemUserCHANGE_PW_NEXT_LOGIN: TIntegerField;
    procedure dtsSystemUserStateChange(Sender: TObject);
    procedure PostData(DataSet: TFDMemTable);
    procedure cdsSystemUserBeforeEdit(DataSet: TDataSet);
    procedure cdsSystemUserNewRecord(DataSet: TDataSet);
    procedure cdsSystemUserAfterPost(DataSet: TDataSet);
  private
    FCurrentUserID: Integer;
    { Private declarations }
  protected
  public
    { Public declarations }
    property CurrentUserID: Integer read FCurrentUserID write FCurrentUserID;
  end;

var
  UserDM: TUserDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RUtils;

{$R *.dfm}

procedure TUserDM.cdsSystemUserAfterPost(DataSet: TDataSet);
begin
  inherited;
  VBBaseDM.DBAction := acBrowsing;
end;

procedure TUserDM.cdsSystemUserBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VBBaseDM.DBAction := acModify;
end;

procedure TUserDM.cdsSystemUserNewRecord(DataSet: TDataSet);
begin
  inherited;
  VBBaseDM.DBAction := acInsert;
  cdsSystemUser.FieldByName('ID').AsInteger := 0;
end;

procedure TUserDM.dtsSystemUserStateChange(Sender: TObject);
var
  EditMode: string;
begin
  EditMode := BooleanToString(TFDMemTable(Sender).State in [dsEdit, dsInsert]);
  SendMessage(Application.MainForm.Handle, WM_STATE_CHANGE, DWORD(PChar(EditMode)), 0);
end;

procedure TUserDM.PostData(DataSet: TFDMemTable);
begin
//  SetLength(VBBaseDM.FDataSetArray, 1);
//  VBBaseDM.FDataSetArray[0] := TFDMemTable(DataSet);
//  VBBaseDM.ApplyUpdates(VBBaseDM.FDataSetArray, TFDMemTable(DataSet).UpdateOptions.Generatorname,
//    TFDMemTable(DataSet).UpdateOptions.UpdateTableName,
//    TFDMemTable(DataSet).Tag);
//
//    TFDMemTable(DataSet).CommitUpdates;
end;

end.

