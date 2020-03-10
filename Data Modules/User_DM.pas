unit User_DM;

interface

uses
  System.SysUtils, System.Classes, VBBase_DM, Vcl.Forms, Data.DBXDataSnap,
  WinApi.Windows,

  VBCommonValues,

  Data.DBXCommon, IPPeerClient,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.SqlExpr, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI;

type
  TUserDM = class(TVBBaseDM)
    VbdevConnection: TFDConnection;
    cdsUser: TFDMemTable;
    dtsUser: TDataSource;
    cdsUserID: TIntegerField;
    cdsUserFIRST_NAME: TStringField;
    cdsUserLAST_NAME: TStringField;
    cdsUserLOGIN_NAME: TStringField;
    cdsUserEMAIL_ADDRESS: TStringField;
    cdsUserPASSWORD: TStringField;
    cdsUserACCOUNT_ENABLED: TIntegerField;
    cdsUserRight: TFDMemTable;
    cdsAssigned: TFDMemTable;
    cdsAvailable: TFDMemTable;
    dtsUserRight: TDataSource;
    dtsAssigned: TDataSource;
    dtsAvailable: TDataSource;
    cdsUserRightID: TIntegerField;
    cdsUserRightNAME: TStringField;
    cdsUserRightDESCRIPTION: TStringField;
    cdsUserRightIS_ACTIVE: TIntegerField;
    cdsAssignedID: TIntegerField;
    cdsAssignedUSER_ID: TIntegerField;
    cdsAssignedRIGHT_ID: TIntegerField;
    cdsAvailableID: TIntegerField;
    cdsAvailableNAME: TStringField;
    cdsAvailableDESCRIPTION: TStringField;
    cdsAssignedRIGHT_NAME: TStringField;
    cdsAssignedRIGHT_DESC: TStringField;
    procedure dtsUserStateChange(Sender: TObject);
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

procedure TUserDM.dtsUserStateChange(Sender: TObject);
var
  EditMode: string;
begin
  EditMode := BooleanToString(TFDMemTable(Sender).State in [dsEdit, dsInsert]);
  SendMessage(Application.MainForm.Handle, WM_STATE_CHANGE, DWORD(PChar(EditMode)), 0);
end;

end.
