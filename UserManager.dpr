program UserManager;

uses
  Vcl.Forms,
  System.SysUtils,
  Vcl.Dialogs,
  System.UITypes,
  WinApi.Windows,
  Base_DM in '..\..\..\..\Lib\Base_DM.pas' {BaseDM: TDataModule},
  Base_Frm in '..\..\..\..\Lib\Base_Frm.pas' {BaseFrm},
  BaseLayout_Frm in '..\..\..\..\Lib\BaseLayout_Frm.pas' {BaseLayoutFrm},
  CommonValues in '..\..\..\..\Lib\CommonValues.pas',
  MsgDialog_Frm in '..\..\..\..\Lib\MsgDialog_Frm.pas' {msgDialogFrm},
  RUtils in '..\..\..\..\Lib\RUtils.pas',
  VBBase_DM in '..\..\Lib\VBBase_DM.pas' {VBBaseDM: TDataModule},
  Main_Frm in 'General\Main_Frm.pas' {MainFrm},
  User_DM in 'Data Modules\User_DM.pas' {UserDM: TDataModule},
  VBCommonValues in '..\..\Lib\VBCommonValues.pas',
  Progress_Frm in '..\..\..\..\Lib\Progress_Frm.pas' {ProgressFrm},
  EditUser_Frm in 'General\EditUser_Frm.pas' {EditUserFrm},
  CommonMethods in '..\..\..\..\Lib\CommonMethods.pas',
  CommonFunctions in '..\..\..\..\Lib\CommonFunctions.pas',
  VBProxyClass in '..\Lib\VBProxyClass.pas',
  ED in '..\..\..\..\Lib\ED.pas';

{$R *.res}

var
  SwitchPrefix: TSysCharSet;
  LaunchDrive: string;

const
  APP_NAME = 'MasterTableManager.exe';

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  Application.Title := 'User Manager';
  LaunchDrive := ExtractFileDrive(Application.ExeName);
  SwitchPrefix := ['/'];
  {$IFDEF RELEASE}
  if not FindCmdLineSwitch('VB_SHELL', SwitchPrefix, True) then
  begin
    Beep;
    TaskMessageDlg('Task Launch Error',
      Application.Title + ' can only run through VB Shell.' + CRLF +
      'Please launch RC Shell to access this task.',
      mtError,
      [mbOK], 0);

    Application.Terminate;
    Application.ShowMainForm := False;
  end
  else
    {$ENDIF}if (AnsiCompareText(LaunchDrive, 'C:') <> 0) then
    begin
      System.SysUtils.Beep;
      TaskMessageDlg('Applicaton Launch Error',
        'You cannot run ' + Application.Title + ' from drive ' + LaunchDrive, mtError,
        [mbOK], 0);
      Application.Terminate;
      Application.ShowMainForm := False;
    end
    else
    begin
      Application.Initialize;
      Application.MainFormOnTaskbar := True;
      Application.CreateForm(TMainFrm, MainFrm);
      Application.Run;
    end;

//  Application.Initialize;
//  Application.MainFormOnTaskbar := True;
//  Application.Title := 'User Manager';
//  Application.Run;
end.
