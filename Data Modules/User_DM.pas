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
    procedure dtsSystemUserStateChange(Sender: TObject);
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

procedure TUserDM.dtsSystemUserStateChange(Sender: TObject);
var
  EditMode: string;
begin
  EditMode := BooleanToString(TFDMemTable(Sender).State in [dsEdit, dsInsert]);
  SendMessage(Application.MainForm.Handle, WM_STATE_CHANGE, DWORD(PChar(EditMode)), 0);
end;


end.
