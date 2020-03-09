unit User_DM;

interface

uses
  System.SysUtils, System.Classes, VBBase_DM, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.SqlExpr,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI;

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
    cdsRight: TFDMemTable;
    cdsAssigned: TFDMemTable;
    cdsAvailable: TFDMemTable;
    dtsRight: TDataSource;
    dtsAssigned: TDataSource;
    dtsAvailable: TDataSource;
    cdsRightID: TIntegerField;
    cdsRightNAME: TStringField;
    cdsRightDESCRIPTION: TStringField;
    cdsRightIS_ACTIVE: TIntegerField;
    cdsRightTASK_ID: TIntegerField;
    cdsRightEXE_NAME: TStringField;
    cdsAssignedID: TIntegerField;
    cdsAssignedUSER_ID: TIntegerField;
    cdsAssignedRIGHT_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserDM: TUserDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
