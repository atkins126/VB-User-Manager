unit EditUser_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Data.DB,

  BaseLayout_Frm, CommonValues, VBCommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, cxEdit, cxButtons,
  dxLayoutControlAdapters, cxContainer, cxCheckBox, cxDBEdit, cxTextEdit;

type
  TEditUserFrm = class(TBaseLayoutFrm)
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litLoginName: TdxLayoutItem;
    litEmailAddress: TdxLayoutItem;
    litAccountEnabled: TdxLayoutItem;
    grpName: TdxLayoutGroup;
    grpLogin: TdxLayoutGroup;
    edtFirstName: TcxDBTextEdit;
    edtLastName: TcxDBTextEdit;
    edtLoginName: TcxDBTextEdit;
    edtEmailAddress: TcxDBTextEdit;
    grpEmailAddress: TdxLayoutGroup;
    cbxAccountEnabled: TcxDBCheckBox;
    grpPW: TdxLayoutGroup;
    litPW: TdxLayoutItem;
    litConfirmPW: TdxLayoutItem;
    grpButtons: TdxLayoutGroup;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    litOK: TdxLayoutItem;
    litCancel: TdxLayoutItem;
    sep1: TdxLayoutSeparatorItem;
    litLegend: TdxLayoutLabeledItem;
    litMatch: TdxLayoutImageItem;
    litNoMatch: TdxLayoutImageItem;
    edtConfirmPassword: TcxTextEdit;
    edtPassword: TcxTextEdit;
    spc1: TdxLayoutEmptySpaceItem;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtPasswordPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FPasswordModified: Boolean;

    function GetPassword(PW: string): string;
    procedure SetPassword(PW: string);
  public
    { Public declarations }
  end;

var
  EditUserFrm: TEditUserFrm;

implementation

{$R *.dfm}

uses VBBase_DM, User_DM, ED;

procedure TEditUserFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'User Account Data';
  Self.Width := 545;
  Self.Height := 190;
  edtFirstName.DataBinding.DataSource := UserDM.dtsSystemUser;
  edtLastName.DataBinding.DataSource := UserDM.dtsSystemUser;
  edtLoginName.DataBinding.DataSource := UserDM.dtsSystemUser;
  edtEmailAddress.DataBinding.DataSource := UserDM.dtsSystemUser;
  cbxAccountEnabled.DataBinding.DataSource := UserDM.dtsSystemUser;
  edtPassword.Text := GetPassword(UserDM.cdsSystemUser.FieldByName('PASSWORD').AsString);
  litMatch.Visible := False;
  litNoMatch.Visible := False;
  FPasswordModified := False;
end;

function TEditUserFrm.GetPassword(PW: string): string;
var
  ED: TED;
begin
  Result := '';
  ED := TED.Create(EKEY1, EKEY2);

  try
    Result := ED.DCString(PW);
  finally
    ED.Free;
  end;
end;

procedure TEditUserFrm.SetPassword(PW: string);
begin

end;

procedure TEditUserFrm.btnOKClick(Sender: TObject);
var
  NextID: Integer;
begin
  inherited;
  if VarIsNull(edtFirstName.EditValue) or SameText(Trim(edtFirstName.Text), '') then
  begin
    edtFirstName.SetFocus;
    raise EValidateException.Create('First name must have a value.');
  end;

  if VarIsNull(edtLastName.EditValue) or SameText(Trim(edtLastName.Text), '') then
  begin
    edtLastName.SetFocus;
    raise EValidateException.Create('Last name must have a value.');
  end;

  if VarIsNull(edtLoginName.EditValue) or SameText(Trim(edtLoginName.Text), '') then
  begin
    edtLoginName.SetFocus;
    raise EValidateException.Create('Login name must have a value.');
  end;

  if VarIsNull(edtPassword.EditValue) or SameText(Trim(edtPassword.Text), '') then
  begin
    edtPassword.SetFocus;
    raise EValidateException.Create('Password must have a value.');
  end;

  if FPasswordModified then
  begin
//    if VarIsNull(edtConfirmPassword.EditValue) or SameText(Trim(edtConfirmPassword.Text), '') then
//    begin
//      edtConfirmPassword.SetFocus;
//      raise EValidateException.Create('Confirm password must have a value.');
//    end;

    if not SameStr(Trim(edtPassword.Text), Trim(edtConfirmPassword.Text)) then
    begin
      edtConfirmPassword.SetFocus;
      raise EValidateException.Create('Password confirmation does not match the password.');
    end;
  end;

  if VBBaseDM.DBAction = acInsert then
  begin
    NextID := VBBaseDM.GetNextID(VBBaseDM.MyDataSet.UpdateOptions.GeneratorName);
    VBBaseDM.MyDataSet.FieldByName('ID').AsInteger := NextID;
  end;

  VBBaseDM.MyDataSet.Post;
  UserDM.PostData(VBBaseDM.MyDataSet);

  Self.ModalResult := mrOK;
end;

procedure TEditUserFrm.edtPasswordPropertiesChange(Sender: TObject);
begin
  inherited;
  litMatch.Visible := SameStr(Trim(edtPassword.Text), Trim(edtConfirmPassword.Text));
  litNoMatch.Visible := not litMatch.Visible;
  FPasswordModified := True;
end;

end.

