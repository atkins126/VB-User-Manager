program UserManager;

uses
  Vcl.Forms,
  Base_DM in '..\..\..\..\Lib\Base_DM.pas' {BaseDM: TDataModule},
  Base_Frm in '..\..\..\..\Lib\Base_Frm.pas' {BaseFrm},
  BaseLayout_Frm in '..\..\..\..\Lib\BaseLayout_Frm.pas' {BaseLayoutFrm},
  CommonValues in '..\..\..\..\Lib\CommonValues.pas',
  MsgDialog_Frm in '..\..\..\..\Lib\MsgDialog_Frm.pas' {msgDialogFrm},
  RUtils in '..\..\..\..\Lib\RUtils.pas',
  VBBase_DM in '..\..\Lib\VBBase_DM.pas' {VBBaseDM: TDataModule},
  Main_Frm in 'General\Main_Frm.pas' {MainFrm},
  User_DM in 'Data Modules\User_DM.pas' {UserDM: TDataModule},
  VBProxyClass in '..\Lib\VBProxyClass.pas',
  VBCommonValues in '..\..\Lib\VBCommonValues.pas',
  Progress_Frm in '..\..\..\..\Lib\Progress_Frm.pas' {ProgressFrm},
  EditUser_Frm in 'General\EditUser_Frm.pas' {EditUserFrm},
  CommonMethods in '..\..\..\..\Lib\CommonMethods.pas',
  CommonFunctions in '..\..\..\..\Lib\CommonFunctions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'User Manager';
  Application.Run;
end.
