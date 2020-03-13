inherited EditUserFrm: TEditUserFrm
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'EditUserFrm'
  ClientHeight = 247
  ClientWidth = 549
  Constraints.MinHeight = 175
  Constraints.MinWidth = 485
  ExplicitWidth = 555
  ExplicitHeight = 276
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 556
    Height = 190
    ExplicitWidth = 556
    ExplicitHeight = 190
    object edtFirstName: TcxDBTextEdit [0]
      Left = 105
      Top = 11
      BeepOnEnter = False
      DataBinding.DataField = 'FIRST_NAME'
      DataBinding.DataSource = UserDM.dtsSystemUser
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 150
    end
    object edtLastName: TcxDBTextEdit [1]
      Left = 348
      Top = 11
      BeepOnEnter = False
      DataBinding.DataField = 'LAST_NAME'
      DataBinding.DataSource = UserDM.dtsSystemUser
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 150
    end
    object edtLoginName: TcxDBTextEdit [2]
      Left = 105
      Top = 36
      BeepOnEnter = False
      DataBinding.DataField = 'LOGIN_NAME'
      DataBinding.DataSource = UserDM.dtsSystemUser
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 150
    end
    object edtEmailAddress: TcxDBTextEdit [3]
      Left = 105
      Top = 61
      BeepOnEnter = False
      DataBinding.DataField = 'EMAIL_ADDRESS'
      DataBinding.DataSource = UserDM.dtsSystemUser
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 393
    end
    object cbxAccountEnabled: TcxDBCheckBox [4]
      Left = 297
      Top = 36
      Caption = 'Account Enabled'
      DataBinding.DataField = 'ACCOUNT_ENABLED'
      DataBinding.DataSource = UserDM.dtsSystemUser
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Transparent = True
    end
    object btnOK: TcxButton [5]
      Left = 389
      Top = 148
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton [6]
      Left = 470
      Top = 148
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object edtConfirmPassword: TcxTextEdit [7]
      Left = 347
      Top = 86
      AutoSize = False
      BeepOnEnter = False
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = 'l'
      Properties.OnChange = edtPasswordPropertiesChange
      Style.Font.Charset = SYMBOL_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Wingdings'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 19
      Width = 150
    end
    object edtPassword: TcxTextEdit [8]
      Left = 105
      Top = 86
      AutoSize = False
      BeepOnEnter = False
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = 'l'
      Properties.OnChange = edtPasswordPropertiesChange
      Style.Font.Charset = SYMBOL_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Wingdings'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 19
      Width = 150
    end
    object cbxShowPassword: TcxCheckBox [9]
      Left = 296
      Top = 111
      Caption = 'Show password'
      ParentShowHint = False
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.OnEditValueChanged = cbxShowPasswordPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Transparent = True
    end
    object cbxChangePassword: TcxDBCheckBox [10]
      Left = 11
      Top = 111
      Caption = 'Change password at next login'
      DataBinding.DataField = 'CHANGE_PW_NEXT_LOGIN'
      DataBinding.DataSource = UserDM.dtsSystemUser
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Transparent = True
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 4
    end
    object litFirstName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'First Name'
      Control = edtFirstName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litLastName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'Last Name'
      Control = edtLastName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litLoginName: TdxLayoutItem
      Parent = grpLogin
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'Login Name'
      Control = edtLoginName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litEmailAddress: TdxLayoutItem
      Parent = grpEmailAddress
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Email Address'
      Control = edtEmailAddress
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 393
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litAccountEnabled: TdxLayoutItem
      Parent = grpLogin
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxAccountEnabled
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grpName: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpLogin: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpEmailAddress: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object grpPW: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object litPW: TdxLayoutItem
      Parent = grpPW
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'Password'
      Control = edtPassword
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litConfirmPW: TdxLayoutItem
      Parent = grpPW
      CaptionOptions.Text = 'Confirm'
      Control = edtConfirmPassword
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grpButtons: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object litOK: TdxLayoutItem
      Parent = grpButtons
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litCancel: TdxLayoutItem
      Parent = grpButtons
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object sep1: TdxLayoutSeparatorItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Separator'
      Index = 5
    end
    object litLegend: TdxLayoutLabeledItem
      Parent = grpButtons
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'Mandatory Fields'
      Index = 0
    end
    object litMatch: TdxLayoutImageItem
      Parent = grpPW
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000041744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E53657453796D626F6C73333B436F6E646974696F6E616C46
        6F726D617474696E673B9DC5ED720000025449444154785EAD935D6C4B6118C7
        DF2A1BFD38DA4E6DB122D5B5DBAC92CA1CC4B0656CA9CE6ABE3A22662C9DB656
        5F4985359D91655DCC47EDA327CA120417222415DA1925F4424AB6650BDD8A0B
        71C1848CC415B3C7FB9EB4F45CB8907993DFB938CFF3FFE579DEE445003021D8
        CF3F1C1E66322605C3C7FC11D8996C54C768D01EAF06D93A311D1A646D57234B
        7B16DADD96C586153902E10EB7F2AA95A9800D0E8581C81202B6F92BC4D097F1
        281A1D7F813EFF1C409FC6FAD0C71FCFD8B09A164BAA9A95FE5BCF1BA07F8401
        739B9104A7FD16D49E51E1F01037FC9D0D4FCA2DA0E455CDAAF0EDBE2608BF3D
        06CECB4B416F4B77E15A6AF21DF0E3BB4D21A14478CE02816CEBF1798FBB074F
        42E84D3D345D2F84129BFC12AE89493D21E097EFCF5C53E32907936BB69F5E27
        53113B46B4FE50A6FF66A411824307E0ECDD52D0D765448452FE0C124EBEC4A9
        D5A7CBA0F7C33908F47B60674BDE68F1AE9916833DC3D7756F2F04861DC0840C
        603CA878AFA40579E4F25659B123499052B05DEA719C5F043DAF9C303872031A
        2E1AC1D76D879E980BBAC26B61E391B9633945227D7C32DE4A731A47C0C38868
        93A4639F570757222678FAAE13825127F89EE8C17C6A3EE82AA813A4878443AF
        5BD0B26A294780E23B51B891B178B4C03C2A01EFC3D5E0BAB618E8CAE9BDB826
        273D0F626E148C36227A9B842B58827FC425126D99D857D39A0DAD779643716D
        FAB759DAD41564CDFBC36E14787914F9070EA3FC4A8A2BC8DF42111212596EA9
        F04291350DD48582FAC4E80B378B114147D824E60AB8203E868A8F2D62A57F39
        FFE5354E885F4F2C8B1CABF609A90000000049454E44AE426082}
      Index = 3
    end
    object litNoMatch: TdxLayoutImageItem
      Parent = grpPW
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000029744558745469746C650052656D6F76653B44656C6574653B426172
        733B526962626F6E3B5374616E646172643B635648300000026449444154785E
        A551494C5351146568194A2B583746627F458902118892AAB811369246043462
        8556D032A82D831664486D8C3FB40B8128E3C68998A289625720314469022591
        26566BC484681C22C6012B5A1556C7F73EBF507FDCF193F3DFBBE7DC7BDE7BF7
        86005811B820E80B2310F16B6880E4F7E10462AAF3F1B2014F889E961FBB307D
        AAE2EBC8FEDC137C72280FB1AB546BA0DAE4F11296C491940F36089F2CD5593F
        DFE8C682771453E71B31909D6D207C044D76166B8C339D1789E6C4A76B5D18D7
        15D9A869B04184A744E7FBED72C03FD08EF9B13BF09CADC1F50C55CDE08182DA
        B7ED562CB807E1BFDB06FF701F3C47753E52131D6C20B2EFCA343C31EAF1D3D1
        89B93E167F1EF5E37155255ED92C989F70E0C74D96E3C734F9B89498749A1E2A
        EC41644F4A6AF5B8F6107C7D2D98ED6D847FE80A7EDDBF8A6FBD4D98ED69C088
        3A0BD678A589E44A843D089844DB141B4D0FF3D5F8D251878FAC9EA08C5B87F6
        EC44B37C6D23C991F2530AF99F81E472BAAA7E42AFC307B612EFEA0E2FC1A52D
        446B5A4633C991090D968A5B93D24D4EAD06336DF5982E5363BA9C07D9BF674F
        62B4F020AC9B53976EF1CF145A36249B1EE4E5E28DA5022F8AB23045706B1383
        DB498974CFE1F599620CAB736061B63409A720ED5624CFBD341E81B760379EE5
        65A23F410183487ACE208EB1F42728E1CDCFE4F0BC641FBA9894395213176C10
        655EA3EC706CDF06778E0A76C57A5447C8E87B63298C91B166BB92817BEF0EDC
        4BDB8A0639D34DF8986083309A58278BEFB0C631BEAAC5E255940F6886A8D566
        A27DAF95ADEB22B15CD883808984208E209A8F859A9C6F6078F0145684BF98E8
        BFC080A205F60000000049454E44AE426082}
      Index = 4
    end
    object spc1: TdxLayoutEmptySpaceItem
      Parent = grpLogin
      SizeOptions.Height = 10
      SizeOptions.Width = 30
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object grpPasswordControl: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object litShowPaassword: TdxLayoutItem
      Parent = grpPasswordControl
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxShowPassword
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litChangePassword: TdxLayoutItem
      Parent = grpPasswordControl
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxChangePassword
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 198
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spc2: TdxLayoutEmptySpaceItem
      Parent = grpPW
      SizeOptions.Height = 10
      SizeOptions.Width = 28
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object spc3: TdxLayoutEmptySpaceItem
      Parent = grpPasswordControl
      SizeOptions.Height = 10
      SizeOptions.Width = 75
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
  end
  inherited styRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
  end
  inherited img32: TcxImageList
    FormatVersion = 1
  end
end
