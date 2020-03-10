inherited MainFrm: TMainFrm
  Caption = 'MainFrm'
  ClientHeight = 819
  ClientWidth = 1299
  ExplicitWidth = 1315
  ExplicitHeight = 858
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 1036
    Height = 681
    ExplicitWidth = 1036
    ExplicitHeight = 681
    object grdUser: TcxGrid [0]
      Left = 11
      Top = 75
      Width = 1014
      Height = 200
      TabOrder = 1
      object viewUser: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = UserDM.dtsUser
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'User Listing'
          end>
        object edtID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###0'
          Properties.EditFormat = '###0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 50
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtFirstName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIRST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 160
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 160
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtLastName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LAST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 160
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 160
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtLoginName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOGIN_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 120
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtEmailAddress: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EMAIL_ADDRESS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 275
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 275
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtPassword: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PASSWORD'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 120
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cbxAccountEnabled: TcxGridDBBandedColumn
          Caption = 'Enbd'
          DataBinding.FieldName = 'ACCOUNT_ENABLED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Account status'
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
      end
      object lvlUser: TcxGridLevel
        GridView = viewUser
      end
    end
    object grdAvailable: TcxGrid [1]
      Left = 595
      Top = 312
      Width = 420
      Height = 200
      TabOrder = 7
      object viewAvailable: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = UserDM.dtsAvailable
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.NoDataToDisplayInfoText = '<No Assigned Rights to display>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Available Rignts'
          end>
        object edtAVID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###0'
          Properties.EditFormat = '###0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 50
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtAVName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
          Options.IncSearch = False
          Options.ExpressionEditing = False
          Options.Grouping = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtAVDescription: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DESCRIPTION'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 1789
          Options.Editing = False
          Options.IncSearch = False
          Options.ExpressionEditing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object lvlAvailable: TcxGridLevel
        GridView = viewAvailable
      end
    end
    object grdAssigned: TcxGrid [2]
      Left = 20
      Top = 312
      Width = 420
      Height = 200
      TabOrder = 2
      object viewAssigned: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = UserDM.dtsAssigned
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.NoDataToDisplayInfoText = '<No Available Rights to display>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Assiged Rights'
          end>
        object edtASID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###0'
          Properties.EditFormat = '###0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 50
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtASUserID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'USER_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###0'
          Properties.EditFormat = '###0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 50
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtRightID: TcxGridDBBandedColumn
          Caption = 'R ID'
          DataBinding.FieldName = 'RIGHT_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '##0'
          Properties.EditFormat = '##0'
          Properties.ReadOnly = True
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtRightName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RIGHT_NAME'
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtRightDescription: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RIGHT_DESC'
          Visible = False
          MinWidth = 1789
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object lvlAssigned: TcxGridLevel
        GridView = viewAssigned
      end
    end
    object btnAssign: TcxButton [3]
      Left = 455
      Top = 359
      Width = 125
      Height = 25
      Caption = 'Assign'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = img16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object btnUnAssign: TcxButton [4]
      Left = 455
      Top = 433
      Width = 125
      Height = 25
      Caption = 'Un-Assign'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = img16
      OptionsImage.Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object btnAssignAll: TcxButton [5]
      Left = 455
      Top = 390
      Width = 125
      Height = 25
      Caption = 'Assign All'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = img16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object btnUnAssignAll: TcxButton [6]
      Left = 455
      Top = 464
      Width = 125
      Height = 25
      Caption = 'Un-Assign All'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = img16
      OptionsImage.Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object docToolbar: TdxBarDockControl [7]
      Left = 11
      Top = 11
      Width = 240
      Height = 58
      Align = dalNone
      BarManager = barManager
    end
    object litToolbar: TdxLayoutItem
      Parent = layMainGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = docToolbar
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 240
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litUserGrid: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = grdUser
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 801
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpRights: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object grpAssigned: TdxLayoutGroup
      Parent = grpRights
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grpAssignButtons: TdxLayoutGroup
      Parent = grpRights
      CaptionOptions.Text = 'Assignment Controls'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      Index = 1
    end
    object grpAvailable: TdxLayoutGroup
      Parent = grpRights
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object grpControlButtons: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object litAssigned: TdxLayoutItem
      Parent = grpAssigned
      CaptionOptions.Visible = False
      Control = grdAssigned
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 420
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litAvailable: TdxLayoutItem
      Parent = grpAvailable
      CaptionOptions.Visible = False
      Control = grdAvailable
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 420
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litAssign: TdxLayoutItem
      Parent = grpAssignButtons
      Control = btnAssign
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litUnAssign: TdxLayoutItem
      Parent = grpAssignButtons
      Control = btnAssignAll
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litAssignAll: TdxLayoutItem
      Parent = grpAssignButtons
      Control = btnUnAssign
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litUnAssignAll: TdxLayoutItem
      Parent = grpAssignButtons
      Control = btnUnAssignAll
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object spc1: TdxLayoutEmptySpaceItem
      Parent = grpAssignButtons
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 0
    end
    object sep1: TdxLayoutSeparatorItem
      Parent = grpAssignButtons
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
  end
  object navUser: TcxDBNavigator [1]
    Left = 45
    Top = 592
    Width = 218
    Height = 40
    Buttons.OnButtonClick = navUserButtonsButtonClick
    Buttons.CustomButtons = <>
    Buttons.Images = imgNav
    Buttons.First.Hint = 'Go to first record'
    Buttons.First.Visible = False
    Buttons.PriorPage.Hint = 'move back 10 records'
    Buttons.PriorPage.Visible = False
    Buttons.Prior.Hint = 'Close User Manager'
    Buttons.Prior.ImageIndex = 7
    Buttons.Prior.Visible = True
    Buttons.Next.Hint = 'Go to next record'
    Buttons.Next.Visible = False
    Buttons.NextPage.Hint = 'Move forward 10 records'
    Buttons.NextPage.Visible = False
    Buttons.Last.Hint = 'Go to last record'
    Buttons.Last.Visible = False
    Buttons.Insert.Hint = 'Insert a new record'
    Buttons.Insert.ImageIndex = 0
    Buttons.Append.Hint = 'Add a neew record'
    Buttons.Delete.Hint = 'delete selected records'
    Buttons.Delete.ImageIndex = 1
    Buttons.Edit.Hint = 'Edit selected record'
    Buttons.Edit.ImageIndex = 4
    Buttons.Post.Hint = 'Save changes'
    Buttons.Post.Visible = False
    Buttons.Cancel.Hint = 'Cancel changes'
    Buttons.Cancel.ImageIndex = 3
    Buttons.Refresh.Hint = 'Refresh dataset'
    Buttons.Refresh.ImageIndex = 5
    Buttons.SaveBookmark.Visible = False
    Buttons.GotoBookmark.Visible = False
    Buttons.Filter.Hint = 'Filter dataset'
    Buttons.Filter.Visible = False
    DataSource = UserDM.dtsUser
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  inherited styRepository: TcxStyleRepository
    Left = 155
    Top = 200
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Images = img32
    Left = 70
    Top = 200
    object actExit: TAction
      Caption = 'Exit'
      ImageIndex = 0
      OnExecute = DoExitUserManager
    end
    object actInsert: TAction
      Caption = 'Insert'
      ImageIndex = 1
      OnExecute = DoInsert
    end
    object actEdit: TAction
      Tag = 1
      Caption = 'Edit'
      ImageIndex = 2
      OnExecute = DoEdit
    end
    object actDelete: TAction
      Caption = 'Delete'
      ImageIndex = 3
      Visible = False
      OnExecute = DoDelete
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      ImageIndex = 6
      OnExecute = DoRefresh
    end
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    Left = 305
    Top = 250
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    object lafLabel: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Verdana'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
    DesignInfo = 16384135
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000021744558745469746C6500507265763B4172726F773B4C6566743B42
          61636B3B526577696E640B2B870F000002AF49444154785EA5925D48544114C7
          FF773F52B30DD3DD75AF461BB56AA8E507A91946904451085A1651481F4A1624
          8118B818140616F4854FA1840F5191652941D683681019293D44190422852686
          0865EDAE7BE7CE4C33B39BA43E3670983367E6FCCE7FCE8C76A57B048C039C5B
          60320646394C938372E133310BFF7A759E06C002C08EC83038E70C32C818C029
          404C0642180C932910256236984C9689B1071AEF55545F7DF5AEFADA6048AE11
          1D36599181A3AE221306D3204B71007AAC45552CAFBF5D9498EC6BF67A5DDB4B
          F253D0F1F8A3CA9B07989C8333064D5D83438FB34A867DCFA91B696E6FCEF9D4
          14D7A1E23C1D4EA7039A0610CAF0EFB05111E08C23314625DA4A2AEBDDBEFC5D
          7E97CB5953B0498FF1AD73E247C8C4C44F0309715698730AA0CD032E1DCE910B
          6B7AC16E4761D9E9DA5549BABF60A3BE327B830B220F53B304813045D86408DB
          3418E622804CAEB9FCB4CA1AEFBC98ED4B5E939BE911112BA6030C41126D2C65
          0A103434988C2E01D8E313F48E7D3BD3118205D373F2208149014DE3601CC217
          200A04380531962AA053E35FFDED9DBF1B32D23C4919191E980C02C2401907A5
          5C2A5090B0DD02932C546001403A5B2A6FBEE969CD7D3930D4FAE0E1F0DCE8E7
          EFB0691CC48C48374CE903217925C617020E5EE89311636CB867B2FFD651FFFB
          BE3BF97DBDAF3BBBBB86D8E4F80CC0231F8B080B130EBAA889286B7C81BDE77A
          D13634FD976C05B062EDD6DA92DCFDED033BCEF6F2BABB9F78D3F309659B8FF5
          70006ECE39A4D9C201A2E8B3418696FE2919A34DA59EC097C1B6B700CA576F39
          53FA6D2CAB3975BD372BABD007932D54A06D3BF9049432D51CCA289894C9217C
          8691AE2A4BB4D18ED4A286237687B7DEE1D6BD1FEE573A45A51905283EFE084C
          DE316CCAAE4B5F01B8F223771E7D7642829601588EC8F8250044018483FF197F
          0048B183E0A83E959B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001B744558745469746C65004E6578743B506C61793B4172726F773B52
          6967687416E40EAE000002AF49444154785EA5925D6895751CC73FCFD14D46BE
          B41AF6C20A870425152C2F82A08B0ABD295D05416F572184045D2644082A425A
          831A62128E2E448C59108D9430D84A1C81DBD4D6B6D05C3B739B5B3BB1EDAC73
          CEF33CFFDF4BCFE1807076DB173E7CF95FFC3E7C2FFE91BB136501D600D556C0
          3F3839EC8262062A86A9A3E2881B224AE9DF949E032F90A396B5877A46C3BEAF
          0687DF3DDABB0B683CBAE7A99C064352458212AA484053218943F55D3BA4969C
          A8B2E7C5C71E3FF7EBFAEFDEEBFAA56FE1D6C4FECFF73E7D1908638BC1821A6A
          10D439DCD58FA8D7092255A3A5B9898EE71F213FBBF9B99F06365D7CFBE0F9AF
          676E0C1FDED6DC70030803B3154B122388616AF582204A2A30B562DCD5BC8137
          3AB6716DEC9ED7FBD76F7C75C3E6B3DD7F0EF67EFCCC834D7380EC78BFD7D457
          2D90E0A46A9412A5583688E081875A78B3F5DEC6CBD75AF636346D7AAB65EBB3
          9DBF5F387EE242D7AE2520D0E59EBBB320552AC1A8A4423938C58A905F4C3302
          AD5BEE67F72BDB373EB1BDFDC0932F7D34D4FE5AE73B4063DD822408A5D4AB20
          6224197195580966AC6B8878B47D0B0F6FBDAFB5E754F205701A48EE082AA540
          A124148A29E6206A04ABC9725184C6C6D0C84D4606AF2FAE14663E03A47E811A
          CB15214E0D7343CC897211EBD6464C8C4F73F5D278BCFCF7ADEEF93F7A3B97A7
          06E680A44E90A6CA526CC4C18822674D2EC7FCC43C570646AD3033F5CD3F13FD
          870AD7CFFD05C480B5ED3CEEAB048195B262EE141796B87A7194DBF97CDFCAF4
          9583B77F3B35045400FDF0C7593F7DE45B4484D50B982B14B3C33126C76F8E94
          1646F74F0F7ED9079401D9F7C3AC03A880AA60AB7EA2A6B1F27DF7F9A9CAE2E4
          91C94B9F9C014A4068DB71CCCD9C339F9EA5DAA686BB634E9DA0FCF38997EFA6
          961848DB761E7337C7CC5071DC0C73C7AB4419A60044EECEFFC97FFDEAC21326
          FC988F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002C744558745469746C6500507265763B446F75626C653B4172726F77
          3B536C6F773B526577696E643B44656372656173657A53DE51000002C7494441
          54785EA5917B48937B18C77F5DA5A8437634ED58FFD439A0E18514D48E5A201C
          8E7F2CA39AE1AC855A695E32D363DE466547524E1EBC7496E70CAF34D174B510
          AF73A8D3E69C0E346D738A79094D0AB7DCA6730AF2EDFDEDB010EA3F5FF8C2FB
          7E789ECFEFF73E0F01B0A5105EC324C97E3E41D26BC6C89D2A0DC9AA9FF8CA98
          6707933D4CF6D277EE5FCA6F18C9A8D59234A196A4566BC8EDF21146A4A545DB
          695160447E60486A73CFB9CC2E30EC87CDECF7542965FB484AB59AE82C209F56
          616BB43B1596E97A21BBA93EB6706043D8370F81588D1341E17E94C5140D6E08
          150BF82DA9830AEC49A26094366E63B2DB23F8B20B9BD758105B3260AEEC9E43
          FB3B2344430BC8289523A67870B552F6011D3316B44D99119CD44E050769F34E
          26FBD9592FD2AE172A754F2533783D6D8270681129CF4610F78F0A7CC92C7ADF
          9B211AB7E0EF7E136ADEAEE04C422B153810568A901391D733F6583C09F9EC2A
          DAA757F0F0D538A28B95A0AC976192D975548E9A51A05C466ECF12CADF981078
          A3890A1CC9A53FE5681D334236BF8E5AE68492FE4550D6AC36A06B6ECDCA4A87
          5750A434215F6EC4FDAECF783260846F5423151C2241917C2E2B5D3275A74283
          FF5406142AF4B855358C8B0F64486618BFDF80E2C1653CEA3322A77B09D9521D
          1E2B0CF0B92AA602674287B7D7DEC5D1FFCA535E484ABB3EBE4C83DCCE8F486B
          9C02A7A017AC0C296E5226D3E15EA71EE9123D72985B7871445470980427B47D
          DDBBC3B1805FBCC34ACB4F27B658A2046AFCD13287E4BA5170EE8AC1B0B54881
          06773B74E049F57067D753C14FC4FF5A13E1AB4CD655DA36E2E476D6D72D94DF
          1C10DF8AE8322DF2CA143870D48F45D9AF716D88AE9880EBF93A2A3842987F21
          3E5C31F1E6BE24272FBFB08976D11D3B7B455F3C1EF2AFCA33ACC15ABC99FD1C
          6A1538118F70D1FF091311777603F1BC64FDB689EC98FC48A74D67F55D06604B
          D9B2E00B4EFC1D5F135F05C60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002C744558745469746C65004E6578743B446F75626C653B4172726F77
          3B466173743B526577696E643B496E637265617365C977401F000002A4494441
          54785EA5937F2C947F00C73F59FA4145B1564C368DFAA3560B49E12F27B34EAD
          E5BEFB2E6B5487B14493CC8F6A213BD250A11885EE34CDF97147256EA2E3B843
          E28E76A8CC6EDCA8DCE122DE3DCFB3E30FFACF677BFFF1BCB6F7EBD93EEFE721
          00D695750BE8634265933126E1057D6B98CFCD26E215F996B85D1191801429F1
          4F6C21CB8C3E9BE3042A843F5548CEDF2A75A3C0162A5BEFBC1E5CCD4C5C2E8B
          C885E48F841D2F21AC9846E219F1861198C594F4A37D588724FEC06220AFB9FC
          C869EED1EAF65148D5BF5698FB7F4907E897D1A26EED0291690CE454683D2330
          8F2AFA8CEFB3C0F0F412848A0970B3E47309056D908F6831A09D43A57C1CDC6C
          F9AC6F7445A6BDF3393BA368C389103123D816F1B407CAA92588BF2DA255B388
          4ECD3C1ED40C8173EF03E29ECB51AFD2423AAA4746B51A67121A275D2FE6C553
          BD9DC63B223BB88F145068FFA07C701E2F9506F0550688870DA856E9702DBF07
          ACEB75887DA18050F573851D0FAAF8E2E89312440B2C02D365681E5B4071DF1C
          0A7B0DC8ED9A4176870E8F3B7528E9D5234B328EC3FF578227195BC368816540
          722BC443BFF1A47B06399D7A64CAF4784809D29A26C1E175C09D5B85E0EC56F0
          5A2656D8218EE0AB9D67E2555AB08B9D2081A07F16E96DD35459878C962904E7
          F5C2234C044EDA7BDCAD53E37EA306C1B99FE01C24FCB19F957AD7D4CCDAC638
          2FB1624537E0591755944E23AC7800EE212203275688941A2552A96268919261
          4E67728AB6DBBAD0739AD3733AB0F9CC0AD62743EA70E3D508BC221BE0E49F5F
          6B61EFE99DC557208AAFA6D83B86591DF477A52F9CCA467AC2DBEFA7C83EBF32
          46B0F3D8A52A38B20B657B9C43CF1AE7D9EDC1AD5DCD4CE9A2035B40ECFDF8C4
          CEB78CECF52E6504A6C692E5F207F22F66E35D42A830455B5629313EAFFF6FFC
          0B0C0C183FEAAD166E0000000049454E44AE426082}
      end>
  end
  inherited img32: TcxImageList
    FormatVersion = 1
    DesignInfo = 16384205
    ImageInfo = <
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020202030702020308020205080101
          0104000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000303060E0D0D1F3A18183F750F0F50990C0C5DB206065CB70A0A5DB70C0C
          54A10A0A3D780808244701010C17000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000008120303
          2E5A08085CB7080877EC060680FD050580FF070780FF070780FF070780FF0707
          80FF08087EFE090979F4080865CC05053E7C0101152A00000104000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000003050202234507075DB90909
          7AF6090981FF090981FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A80FD06066FDE02023E7C00000C170000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000070D04043A77080873E80A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A7DFA07075BB80101
          1530000001010000000000000000000000000000000000000000000000000000
          00000000000000000000000007100404468F0A0A7AF60A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A7FFE0909
          61D00101193B0000010100000000000000000000000000000000000000000000
          00000000000000000409050542860A0A7BF80A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A80FF0A0A82FF0A0A82FF0A0A83FF0B0B83FF0B0B83FF0B0B83FF0B0B
          83FF0B0B83FF0B0B83FF0A0A82FF0A0A82FF0A0A82FF0A0A81FF0A0A81FF0A0A
          81FF090960CF0101162E00000000000000000000000000000000000000000000
          0000000000020303305E080879F10A0A81FF0A0A81FF0A0A81FF0A0A82FF0808
          82FF050581FF040482FF070783FF0A0A84FF0B0B86FF0B0B86FF0B0B86FF0B0B
          86FF090985FF050584FF040482FF060683FF0A0A83FF0B0B83FF0A0A82FF0A0A
          80FF0A0A7FFE070759B400000A15000000000000000000000000000000000000
          00000101122607076CD50A0A81FF0A0A81FF0A0A82FF0B0B83FF060681FF0000
          80FF282893FF3D3D9EFF020285FF020284FF0B0B87FF0C0C89FF0C0C89FF0909
          88FF000082FF16168DFF4545A0FF0E0E89FF000081FF090984FF0B0B85FF0B0B
          84FF0A0A82FF0A0A7DF904043B74000000030000000000000000000000000000
          0104050544870A0A80FD0A0A82FF0B0B83FF0B0B84FF070785FF000080FF4C4C
          A3FFFEFEF9FFFFFFFFFF9797C5FF020287FF030387FF0C0C8AFF0A0A8AFF0000
          85FF232394FFDCDCE7FFFFFFFFFFC8C8DEFF17178DFF000084FF0B0B86FF0B0B
          86FF0B0B85FF0B0B83FF09096FD9010111250000000000000000000000000101
          122308086CDA0A0A82FF0B0B84FF0B0B85FF0C0C87FF030384FF333399FFFFFF
          FAFFFFFFFFFFFFFFFFFFFFFFFFFF9393C5FF030389FF020289FF000088FF2222
          94FFD9D9E7FFFFFFFFFFFFFFFFFFFFFFFFFFC2C2D9FF070789FF0B0B89FF0C0C
          88FF0C0C87FF0B0B86FF0B0B81FC040438760000010100000000000000000303
          30610A0A7DFA0B0B84FF0C0C86FF0C0C88FF0C0C89FF030387FF6060ADFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393C4FF000087FF1C1C94FFD8D8
          E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF8FF171790FF0A0A8BFF0D0D
          8BFF0D0D89FF0C0C88FF0C0C87FF070760C20000061000000000000003050606
          52A20B0B85FF0C0C87FF0C0C88FF0D0D8AFF0D0D8BFF07078AFF12128FFFC7C7
          DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9AC6FFD0D0E2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7ABAFF00008AFF0C0C8DFF0E0E
          8DFF0D0D8CFF0D0D8AFF0C0C89FF0B0B7BEB02021A320000000000000A130909
          68CC0C0C87FF0C0C89FF0D0D8AFF0D0D8CFF0E0E8EFF0C0C8EFF01018CFF1515
          92FFC4C4DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7AB9FF00008CFF08088FFF0F0F91FF0E0E
          8FFF0E0E8EFF0D0D8DFF0D0D8BFF0C0C87FB04042F5A00000000010112230A0A
          75E10C0C89FF0D0D8BFF0D0D8DFF0E0E8EFF0E0E90FF0F0F91FF0D0D92FF0202
          8EFF161694FFC3C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7979BAFF01018FFF080893FF101094FF0F0F93FF0F0F
          92FF0F0F90FF0E0E8FFF0E0E8DFF0D0D8BFF05053C7B000000000101182E0B0B
          7DEA0D0D8BFF0D0D8DFF0E0E8FFF0F0F90FF0F0F92FF101094FF101095FF0E0E
          97FF010192FF0A0A91FFC3C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF7373B7FF000090FF080896FF111198FF111197FF101096FF1010
          94FF0F0F92FF0F0F91FF0E0E8FFF0E0E8DFF0707448C0000010101011A301212
          84EB0D0D8CFF0E0E8EFF0F0F90FF0F0F92FF101094FF101096FF111197FF0E0E
          98FF000094FF191996FFD3D3E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF8A8AC1FF000092FF080898FF11119BFF111199FF111198FF1010
          96FF101095FF0F0F93FF0E0E90FF111191FF0A0A468E00000101010115271919
          87E510108FFF0F0F90FF0F0F92FF101094FF101096FF111198FF0E0E9AFF0202
          96FF24249CFFD8D8E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9393C5FF060695FF09099BFF11119CFF11119AFF1111
          98FF101097FF101095FF0D0D92FF1C1C9AFF0A0A47830000000000000D181A1A
          80D5161695FF0D0D91FF101094FF101096FF111198FF0F0F9AFF030396FF2525
          9CFFD8D8E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9494C5FF070796FF09099CFF12129CFF1212
          9BFF111199FF101097FF0D0D93FF2727A2FD0606386600000000000005091717
          74B322229FFF0D0D90FF101096FF111198FF11119AFF0B0B9AFF1E1E9AFFDDDD
          E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7DBAFFBCBCD7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393C3FF060698FF10109EFF1212
          9CFF12129AFF101097FF111197FF2E2EA1F20101244000000000000000010B0B
          4D793535ADFD0C0C91FF101096FF111199FF12129CFF09099BFF6363B2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7878BBFF00009BFF13139FFFC3C3
          DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FF1B1B9EFF0F0FA0FF1212
          9EFF12129CFF0E0E98FF2020A3FF292990D401010F1A00000000000000000202
          20363535A3EA1A1A9DFF0E0E97FF12129BFF12129DFF0A0A9DFF2B2B9EFFF0F0
          EFFFFFFFFFFFFFFFFFFFFFFFFFFF7979BCFF0505A0FF0D0DAAFF0808A8FF1919
          A1FFC4C4DBFFFFFFFFFFFFFFFFFFFFFFFFFFACACCEFF09099CFF1111A2FF1212
          A0FF11119EFF0D0D98FF3A3AB3FE13135E930000010400000000000000000000
          060A1B1B6CA93F3FB6FF0B0B95FF11119BFF12129FFF0F0FA1FF03039DFF3A3A
          A3FFEAEAEBFFFFFFFCFF7D7DBCFF0505A2FF0F0FACFF1515AEFF1414AEFF0909
          ABFF1A1AA2FFC4C4D9FFFFFFFFFFB0B0D0FF10109DFF0A0AA4FF1212A4FF1313
          A1FF0E0E9CFF1E1EA5FF3F3FAEEB0202233D0000000000000000000000000000
          0000030326424343AFEB2626A9FF0D0D99FF1111A0FF1313A2FF1111A3FF0505
          A2FF1B1BA1FF2A2AA5FF0808A4FF0F0FADFF1717B0FF1717B1FF1717B1FF1515
          B1FF0B0BACFF1111A4FF2F2FA7FF0D0DA3FF0B0BA7FF1313A7FF1414A5FF1010
          A2FF0F0F9FFF4B4BBFFE17176A9C000004090000000000000000000000000000
          00000000030712125A8B5555C5FB1818A3FF0D0D9EFF1212A2FF1414A6FF1414
          A8FF1111AAFF1212ADFF1515AFFF1717B2FF1818B2FF1818B3FF1818B4FF1818
          B3FF1717B2FF1414B1FF1313AFFF1313ADFF1414ABFF1515A9FF1212A4FF0E0E
          A1FF4141BDFF3939A2D702021C2C000000000000000000000000000000000000
          00000000000000000F1A25257FB75959CAFE1717A4FF0D0DA0FF1313A6FF1515
          A9FF1616ACFF1616AEFF1717B0FF1818B2FF1818B4FF1919B6FF1919B6FF1919
          B6FF1818B5FF1818B3FF1717B1FF1717AFFF1616ACFF1212A8FF0E0EA3FF3C3C
          BEFF4F4FBBEC0808385700000002000000000000000000000000000000000000
          000000000000000000000101182A2C2C8DC46161D0FE2121AEFF0D0DA3FF1212
          A8FF1616ADFF1717AFFF1717B2FF1818B4FF1919B6FF1919B8FF1A1AB9FF1919
          B8FF1919B7FF1818B5FF1818B2FF1616AFFF1111ABFF1111A9FF4848C7FF5757
          C2EE0C0C476C0000040600000000000000000000000000000000000000000000
          000000000000000000000000000000001829232380B46767D5FA4343C4FF1313
          AAFF0E0EA8FF1313AEFF1717B3FF1919B5FF1919B8FF1A1ABAFF1A1ABCFF1A1A
          BAFF1818B8FF1717B5FF1212B1FF0E0EADFF2727B7FF6262D7FF4A4AB7E40A0A
          4365000003070000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000D18111159855252BBE76E6E
          DAFE4545C7FF1D1DB4FF0F0FAEFF0F0FB1FF1010B4FF1212B8FF1313BAFF1010
          B7FF0E0EB4FF1616B5FF3030C2FF6060D8FF6868D6F82A2A8DBC04042B400000
          0104000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000004060202243A1818
          709E4F4FBAE47373DEFC7070E1FF5D5DD9FF4E4ED2FF4747D0FF4A4AD2FF5757
          D7FF6969E0FF7676E2FE6363D1F3343496C50A0A436800000C15000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          050700001C2C080849691E1E79A437379FC84646B2D94C4CBBDF4A4AB8DD3E3E
          A9D22A2A8AB713135D8704042E4700000C140000010100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000030501010B100101131B010116200101141F0000
          0F16000006090000010100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020233217D056A46FF056A46FF056A46FF056A46FF056A46FF056A
          46FF056A46FF056A46FF0233217D000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0A6F4AFF0A6F4AFF0A6F4AFF0A6F4AFF0A6F4AFF0A6F
          4AFF0A6F4AFF0A6F4AFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0C724DFF0C724DFF0C724DFF0C724DFF0C724DFF0C72
          4DFF0C724DFF0C724DFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0E744FFF0E744FFF0E744FFF0E744FFF0E744FFF0E74
          4FFF0E744FFF0E744FFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF117751FF117751FF117751FF117751FF117751FF1177
          51FF117751FF117751FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF147A54FF147A54FF147A54FF147A54FF147A54FF147A
          54FF147A54FF147A54FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF187D57FF187D57FF187D57FF187D57FF187D57FF187D
          57FF187D57FF187D57FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF1B815AFF1B815AFF1B815AFF1B815AFF1B815AFF1B81
          5AFF1B815AFF1B815AFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010504482FAF1F855DFF1F855DFF1F855DFF1F855DFF1F855DFF1F85
          5DFF1F855DFF1F855DFF04482FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000022E1E7103442DA703452DAA03452DAA03452DAA03452DAA03452DAA0345
          2DAA03462EAC055E3EE4238860FF238860FF238860FF238860FF238860FF2388
          60FF238860FF238860FF055E3EE403462EAC03452DAA03452DAA03452DAA0345
          2DAA03452DAA03452DAA03452DAA0232217B0000000000000000000000000000
          00000F6F4BF5268C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF10744FFF0001010400000000000000000000
          0000106F4CF52A8F67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF117550FF0000000000000000000000000000
          000011704DF52E936BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF127651FF0000000000000000000000000000
          000012714EF532976EFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF137752FF0000000000000000000000000000
          000014734FF5379B72FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF157953FF0000000000000000000000000000
          0000157450F53A9F75FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF167A54FF0000000000000000000000000000
          0000167552F53EA279FF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF187B56FF0000000000000000000000000000
          0000187B56F54AB88BFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE
          8FFF4DBE8FFF4BB98CFF46AC82FF44A77DFF44A77DFF44A77DFF44A77DFF44A7
          7DFF44A77DFF46AC82FF4BB88BFF4DBD8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE
          8FFF4DBE8FFF4DBE8FFF4BBA8DFF1B825AFF0000000000000000000000000000
          0000022E1E7103442DA703452DAA03452DAA03452DAA03452DAA03452DAA0345
          2DAA03452DAA045D3DE349AF85FF48AB82FF48AB82FF48AB82FF48AB82FF48AB
          82FF48AB82FF49AF85FF06603FE403462EAC03452DAA03452DAA03452DAA0345
          2DAA03452DAA03452DAA03452DAA0232217B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA4BAF85FF4BAF85FF4BAF85FF4BAF85FF4BAF85FF4BAF
          85FF4BAF85FF4BAF85FF044930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA4FB288FF4FB288FF4FB288FF4FB288FF4FB288FF4FB2
          88FF4FB288FF4FB288FF044930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA52B58BFF52B58BFF52B58BFF52B58BFF52B58BFF52B5
          8BFF52B58BFF52B58BFF054930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA56B88EFF56B88EFF56B88EFF56B88EFF56B88EFF56B8
          8EFF56B88EFF56B88EFF054930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA59BB91FF59BB91FF59BB91FF59BB91FF59BB91FF59BB
          91FF59BB91FF59BB91FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA5CBE93FF5CBE93FF5CBE93FF5CBE93FF5CBE93FF5CBE
          93FF5CBE93FF5CBE93FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA5EC095FF5EC095FF5EC095FF5EC095FF5EC095FF5EC0
          95FF5EC095FF5EC095FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA65CC9FFF67D0A2FF67D0A2FF67D0A2FF67D0A2FF67D0
          A2FF67D0A2FF65CDA0FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000232217B289067FF2A946AFF2A946AFF2A946AFF2A946AFF2A94
          6AFF2A946AFF289167FF0233227D000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFC003FFFFC003FFFFC003FFFFC003FFFFC003FFFFC0
          03FFFFC003FFFFC003FFFFC003FFC0000003C0000001C0000003C0000003C000
          0003C0000003C0000003C0000003C0000003C0000003FFE003FFFFE003FFFFE0
          03FFFFE003FFFFE003FFFFE003FFFFE003FFFFE003FFFFE003FFFFFFFFFFFFFF
          FFFF}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000805020E241C0A3D29200B442B20
          0B442A1F0B452A210B4529200B43100C041B0000000000000000000000000000
          0000120E071D29200B432A210B452B200B4429200B4429200B44241C0A3D0805
          020E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101000147331277947125F19A7326F59A75
          26F5977727F6977727F69A7326F5675019A80604010A00000000000000000604
          010A66511CA99A7325F5977727F6977727F69A7326F59A7326F5947125F14733
          1276010100010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000202000362471AA3A37D2CFFA37D2CFFA37D
          2CFFA37D2CFFA37D2CFFA37D2CFF846521D10D0A031500000000000000000D0A
          0315846521D1A37D2CFFA37D2CFFA37D2CFFA37D2CFFA37D2CFFA37D2CFF6247
          1AA3020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003674D17A4A6812EFFA6812EFFA681
          2EFFA6812EFFA6812EFFA6812EFF866826D20D0A031500000000000000000D0A
          0315866826D2A6812EFFA6812EFFA6812EFFA6812EFFA6812EFFA6812EFF674D
          17A4020200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020200036A4D19A4A88330FFA88330FFA883
          30FFA88330FFA88330FFA88330FF886C27D20D0A031500000000000000000D0A
          0315886C27D2A88330FFA88330FFA88330FFA88330FFA88330FFA88330FF6A4D
          19A4020200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020200036E4F1BA4AB8533FFAB8533FFAB85
          33FFAB8533FFAB8533FFAB8533FF8D6D2AD20D0A031500000000000000000D0A
          03158D6D2AD2AB8533FFAB8533FFAB8533FFAB8533FFAB8533FFAB8533FF6E4F
          1BA4020200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020200036E511EA4AD8735FFAD8735FFAD87
          35FFAD8735FFAD8735FFAD8735FF8B6D2AD20F0A041500000000000000000F0A
          04158B6D2AD2AD8735FFAD8735FFAD8735FFAD8735FFAD8735FFAD8735FF6E51
          1EA4020200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000202000370531FA4B08A37FFB08A37FFB08A
          37FFB08A37FFB08A37FFB08A37FF8F6F2BD20F0B041500000000000000000F0B
          04158F6F2BD2B08A37FFB08A37FFB08A37FFB08A37FFB08A37FFB08A37FF7053
          1FA4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003735522A4B28C3AFFB28C3AFFB28C
          3AFFB28C3AFFB28C3AFFB28C3AFF927230D20F0B041500000000000000000F0B
          0415927230D2B28C3AFFB28C3AFFB28C3AFFB28C3AFFB28C3AFFB28C3AFF7355
          22A4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003745722A4B58E3CFFB58E3CFFB58E
          3CFFB58E3CFFB58E3CFFB58E3CFF927530D20F0B041500000000000000000F0B
          0415927530D2B58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFF7457
          22A4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003735925A4B7903EFFB7903EFFB790
          3EFFB7903EFFB7903EFFB7903EFF967533D20F0B041500000000000000000F0B
          0415967533D2B7903EFFB7903EFFB7903EFFB7903EFFB7903EFFB7903EFF7359
          25A4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003725A26A4BA9341FFBA9341FFBA93
          41FFBA9341FFBA9341FFBA9341FF977634D20F0B051500000000000000000F0B
          0515977634D2BA9341FFBA9341FFBA9341FFBA9341FFBA9341FFBA9341FF725A
          26A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003705C29A4BD9543FFBD9543FFBD95
          43FFBD9543FFBD9543FFBD9543FF997A35D20F0C051500000000000000000F0C
          0515997A35D2BD9543FFBD9543FFBD9543FFBD9543FFBD9543FFBD9543FF705C
          29A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003725E29A4BF9745FFBF9745FFBF97
          45FFBF9745FFBF9745FFBF9745FF9B7A39D20F0C051500000000000000000F0C
          05159B7A39D2BF9745FFBF9745FFBF9745FFBF9745FFBF9745FFBF9745FF725E
          29A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003755E2DA4C29948FFC29948FFC299
          48FFC29948FFC29948FFC29948FF9D7B3AD20F0C051500000000000000000F0C
          05159D7B3AD2C29948FFC29948FFC29948FFC29948FFC29948FFC29948FF755E
          2DA4030200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000302000375622DA4C59B4AFFC59B4AFFC59B
          4AFFC59B4AFFC59B4AFFC59B4AFFA07F3DD2100C05150000000000000000100C
          0515A07F3DD2C59B4AFFC59B4AFFC59B4AFFC59B4AFFC59B4AFFC59B4AFF7562
          2DA4030200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000302000379622FA4C89E4DFFC89E4DFFC89E
          4DFFC89E4DFFC89E4DFFC89E4DFFA2803ED2100C06150000000000000000100C
          0615A2803ED2C89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFF7962
          2FA4030200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030200037B6531A4CAA04FFFCAA04FFFCAA0
          4FFFCAA04FFFCAA04FFFCAA04FFFA4843FD2100C06150000000000000000100C
          0615A4843FD2CAA04FFFCAA04FFFCAA04FFFCAA04FFFCAA04FFFCAA04FFF7B65
          31A4030200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030200037D6534A4CDA251FFCDA251FFCDA2
          51FFCDA251FFCDA251FFCDA251FFA88441D2100D06150000000000000000100D
          0615A88441D2CDA251FFCDA251FFCDA251FFCDA251FFCDA251FFCDA251FF7D65
          34A4030200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030200037D6934A4D0A454FFD0A454FFD0A4
          54FFD0A454FFD0A454FFD0A454FFA98444D2100D06150000000000000000100D
          0615A98444D2D0A454FFD0A454FFD0A454FFD0A454FFD0A454FFD0A454FF7D69
          34A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003806938A4D2A756FFD2A756FFD2A7
          56FFD2A756FFD2A756FFD2A756FFAB8846D2110D06150000000000000000110D
          0615AB8846D2D2A756FFD2A756FFD2A756FFD2A756FFD2A756FFD2A756FF8069
          38A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003836C38A4D5A958FFD5A958FFD5A9
          58FFD5A958FFD5A958FFD5A958FFAD8947D2110D06150000000000000000110D
          0615AD8947D2D5A958FFD5A958FFD5A958FFD5A958FFD5A958FFD5A958FF836C
          38A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003836E3AA4D7AB5BFFD7AB5BFFD7AB
          5BFFD7AB5BFFD7AB5BFFD7AB5BFFAE8D49D2110D07150000000000000000110D
          0715AE8D49D2D7AB5BFFD7AB5BFFD7AB5BFFD7AB5BFFD7AB5BFFD7AB5BFF836E
          3AA4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003876C40A3D9AC5CFFD9AB5AFFD9AB
          5AFFD9AB5AFFD9AB5AFFD9AB5AFFB28E4ED1110D07150000000000000000110D
          0715B28E4ED1D9AB5AFFD9AB5AFFD9AB5AFFD9AB5AFFD9AB5AFFD9AC5CFF876C
          40A3030200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101000162513372D4B16DEDD6B26AF2D6B2
          6AF2D6B26AF2D6B26AF2D7B46DF0917647A20806030A00000000000000000806
          030A917647A2D7B46DF0D6B26AF2D6B26AF2D6B26AF2D6B26AF2D4B16DED6251
          3372010100010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000906040C2F261835362E1C3D362E
          1C3D362E1C3D362E1C3D332B1B3A120F08160000000000000000000000000000
          0000120F0816332B1B3A362E1C3D362E1C3D362E1C3D362E1C3D2F2618350906
          040C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B1B547110287CA711297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA0C1D5B7B0000000000000000000000000000
          00001235B6F5042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF1136BEFF0000020400000000000000000000
          00001338B8F50834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF133AC0FF0000000000000000000000000000
          0000153CBAF50E41CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF153EC2FF0000000000000000000000000000
          00001640BCF5144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF1742C4FF0000000000000000000000000000
          00001844BEF51B5EDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1948C7FF0000000000000000000000000000
          00001A48C0F5216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF1B4CC9FF0000000000000000000000000000
          00001C4DC3F52778E7FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF1E51CCFF0000000000000000000000000000
          00001F54C8F53399F6FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF349BF8FF2159D1FF0000000000000000000000000000
          00000B1B547110287CA711297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA0C1D5B7B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003C0000001C0000003C0000003C000
          0003C0000003C0000003C0000003C0000003C0000003FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000006040F022E1E71045035C2011E144B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002352382076643F1096F4AFF055D3EE001150E3400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000006040F0236
          23840A6E4AFF0D734DFF0D734DFF0D724DFF065D3EE001201550000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000023623850A69
          46F2107550FF107650FF107650FF107650FF0E734EFF075E3FE001150E340000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000060410033724870E734EFF1379
          53FF147953FF147953FF147953FF147953FF147953FF137852FF075F3FE00120
          1550000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000033724870E6D4AF2177C56FF177D
          56FF177D56FF177D56FF177D56FF177D56FF177D56FF177D56FF147A53FF0760
          3FE001150E340000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000006041003382587147953FF1B815AFF1B825AFF1C82
          5AFF1B825AFF1C825AFF1B825AFF1C825AFF1B825AFF1C825AFF1B825AFF1A80
          59FF096241E00120155000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000339258913724EF31F855DFF20865EFF20865EFF2086
          5EFF20865EFF20865EFF20865EFF20865EFF20865EFF20865EFF20865EFF2086
          5EFF1B815AFF0A6242E001150E35000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000060410043926891A7E59FF248962FF258A62FF258A62FF258A62FF258A
          62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A
          62FF258A62FF238860FF0C6443E1012116520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000043A268A197854F3288D65FF298E66FF288E66FF298E66FF288E66FF298E
          66FF288E66FF298E66FF288E66FF298E66FF288E66FF298E66FF288E66FF298E
          66FF288E66FF298E66FF238861FF0C6444E101150E3500000000000000000000
          00000000000000000000000000000000000000000000000000000004020B0438
          258522865FFF2E936BFF2E936BFF2E936BFF2E936BFF2E936BFF2E936BFF2E93
          6BFF2F946CFF2F9B70FF28946AFF30996FFF2E936BFF2E936BFF2E936BFF2E93
          6BFF2E936BFF2E936BFF2E936BFF2C9069FF0E6545E101211652000000000000
          000000000000000000000000000000000000000000000000000001160E36156D
          4CE0339970FF33976FFF33976FFF33976FFF33976FFF33976FFF33976FFF3397
          6FFF359F74FF208A61FF09563AC2289369FF359D73FF33976FFF33976FFF3397
          6FFF33976FFF33976FFF33976FFF33976FFF2C9068FF0E6646E101150E350000
          000000000000000000000000000000000000000000000000000000080514023E
          299929966AFF39A477FF389D73FF389D73FF389D73FF389D73FF389F74FF39A5
          78FF1B7D57EF023220780009061703422B9F2B976CFF39A377FF389D73FF389D
          73FF389D73FF389D73FF389D73FF389D73FF389D73FF359A70FF106847E10121
          1652000000000000000000000000000000000000000000000000000000000008
          0514064E34B32C986CFF3FA87CFF3CA177FF3CA177FF3DA277FF3EA97CFF248E
          65FF02301F750004030C0000000000090617085338BC2F9B6FFF3FA77BFF3CA1
          77FF3CA177FF3CA177FF3CA177FF3CA177FF3CA177FF3CA177FF34986FFF1169
          48E101150E350000000000000000000000000000000000000000000000000000
          000000070513023D28952F9A6FFF43AD82FF43A97EFF43AE82FF1D7F59EE0230
          1F74000000000000000000000000000000000009061704432CA134A074FF44AD
          81FF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF3EA2
          79FF136A4AE20122165300000000000000000000000000000000000000000000
          00000000000000060411074D33B0319D71FF4BBB8DFF289368FF022E1E710004
          020B0000000000000000000000000000000000000000000906180A5639BE37A2
          77FF48B085FF46AA80FF46AA80FF46AA80FF46AA80FF46AA80FF46AA80FF46AA
          80FF3CA077FF146C4BE201160E37000000000000000000000000000000000000
          000000000000000000000006041102382489136747CB022B1C68000000000000
          0000000000000000000000000000000000000000000000000000000906180544
          2DA23BA67AFF4DB58AFF4BAE85FF4BAE85FF4BAE85FF4BAE85FF4BAE85FF4BAE
          85FF4BAE85FF47AA81FF156D4BE2022217530000000000000000000000000000
          000000000000000000000000000000020107000D082100010003000000000000
          000000000000000000000000000000000000000000000000000000000000000A
          06190B573BBF3FAA7EFF52B88DFF4FB288FF4FB288FF4FB288FF4FB288FF4FB2
          88FF4FB288FF4FB288FF44A77DFF166E4DE201160E3700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000A061905452EA343AD82FF56BD92FF53B68CFF53B68CFF53B68CFF53B6
          8CFF53B68CFF53B68CFF54B78EFF4EB288FF074E34B40004020A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000A06190D593CC046B185FF5ABF94FF57B98FFF57B98FFF57B9
          8FFF57B98FFF57BA90FF59C195FF31996FFF022A1B6600000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000A071A05462FA54AB488FF5DC498FF5ABD92FF5ABD
          92FF5BBF94FF5EC699FF298A64EF03301F730000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000A071A0F5C3FC34CB78BFF60C69AFF5EC1
          96FF60C99CFF3AA377FF033221770004030C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000B071B074830A750BB8EFF67D3
          A4FF30926AF00334227C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000B071B105E41C4309A
          70FF0435237E0005030E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000020107000A
          071A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFC1FFFFFF00FFFFFF00
          7FFFFC003FFFFC001FFFF0000FFFF00007FFC00003FFC00001FF000000FF0000
          007F0000003F8008001FC03C000FE03E0007F0FF0003F8FF8001FFFFC000FFFF
          E000FFFFF003FFFFF803FFFFFC0FFFFFFE0FFFFFFF3FFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010001
          0508000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000001050800000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000815445C1029
          84B2050C27350000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050C2735102984B209174962000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002060909174A640E32BEFF0428
          BEFF1031A7E108133D5200000000000000000000000000000000000000000000
          0000000000000000000008133D521031A7E10428BEFF0E32BEFF0A194E690102
          070A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000009174A641032AFEB0429BFFF0228
          BFFF062BBFFF1131A7E1050C2735000000000000000000000000000000000000
          000000000000050C27351131A7E1062BBFFF0228BFFF0429BFFF1031B0EC0918
          4C66000000000000000000000000000000000000000000000000000000000000
          000000000000000000000002060909174A640F35BFFF052CC1FF042BC1FF042B
          C1FF042BC1FF052CC1FF1132A8E108133D520000000000000000000000000000
          000008133D521132A7E1052CC1FF042BC1FF042BC1FF042BC1FF052CC1FF0F35
          BFFF09184B650002060900000000000000000000000000000000000000000000
          0000000000000000000009184A641134B0EB0630C2FF052FC2FF052FC2FF052F
          C2FF052FC2FF052FC2FF0831C2FF1232A8E1050C27350000000000000000050C
          27351232A8E10831C2FF052FC2FF052FC2FF052FC2FF052FC2FF052FC2FF062F
          C2FF1134B0EB09184A6400000000000000000000000000000000000000000000
          0000000000010816445C1139C1FF0933C4FF0833C4FF0833C4FF0833C4FF0833
          C4FF0833C4FF0833C4FF0833C4FF0933C4FF1233A9E108133D5208133D521233
          A9E10933C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833
          C4FF0933C4FF1239C1FF0916435B000000010000000000000000000000000000
          00000102070A102B87B40B38CAFF0937CAFF0937C6FF0937C6FF0937C6FF0937
          C6FF0937C6FF0937C6FF0937C6FF0937C6FF0C38C5FF1334A9E11334A9E10C38
          C5FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937
          C6FF0937CAFF0B39CBFF112B85B3000206090000000000000000000000000000
          000000000000050E2C3B1339B5E40E42DDFF0B3DCDFF0B3CC8FF0B3CC8FF0B3C
          C8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0C3CC8FF0C3CC8FF0B3C
          C8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3D
          CDFF0E42DDFF1338B4E3050D2A39000000000000000000000000000000000000
          00000000000000000000081541571339B6E40F46E0FF0D41D0FF0D40CBFF0D40
          CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40
          CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D41D0FF0F47
          E0FF1439B4E30814405600000000000000000000000000000000000000000000
          0000000000000000000000000000050E2C3B153CB7E4124BE2FF1047D2FF1045
          CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045
          CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1047D3FF134BE2FF153B
          B5E3050D2A390000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000008154157153DB8E41451E5FF124B
          D5FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124A
          D0FF124AD0FF124AD0FF124AD0FF124AD0FF124CD5FF1451E6FF153CB6E30814
          4056000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000050E2C3B163FB9E41756
          E7FF1551D7FF144FD2FF144FD2FF144FD2FF144FD2FF144FD2FF144FD2FF144F
          D2FF144FD2FF144FD2FF144FD2FF1551D8FF1755E7FF163EB7E3050D2A390000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000081541571740
          B8E41858E0FF1654D6FF1654D5FF1654D5FF1654D5FF1654D5FF1654D5FF1654
          D5FF1654D5FF1654D5FF1654D6FF1857E0FF173FB6E308154056000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000008133D52163C
          AEE11958D6FF195AD7FF195AD7FF195AD7FF195AD7FF195AD7FF195AD7FF195A
          D7FF195AD7FF195AD7FF195AD7FF1958D6FF163CADE008133B50000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000050C2735163EAEE11B59
          D6FF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5E
          DAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B59D6FF163DADE0050C26340000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000008143D52173FAEE11D62DAFF1D64
          DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64
          DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D61DAFF173FADE00813
          3B50000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050C27351740AEE11E62DAFF1F68DFFF1F68
          DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68
          DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1E62DAFF173F
          AEE0050C26340000000000000000000000000000000000000000000000000000
          0000000000000000000008143D521841AFE1216BDFFF226EE1FF226EE1FF226E
          E1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE2FF226EE3FF226EE3FF226E
          E2FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF216B
          DFFF1840AFE008133B5000000000000000000000000000000000000000000000
          000000000000050C27351942B0E1226ADEFF2472E4FF2472E4FF2472E4FF2472
          E4FF2472E4FF2472E4FF2472E4FF2472E4FF2575EAFF277BF3FF277BF3FF2575
          EAFF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472
          E4FF2269DEFF1841AFE0050C2634000000000000000000000000000000000000
          000000010507112C85B12573E7FF2779EAFF2677E6FF2677E6FF2677E6FF2677
          E6FF2677E6FF2677E6FF2677E6FF277AECFF287BF4FF1B49B7E21B49B7E2287B
          F4FF277AECFF2677E6FF2677E6FF2677E6FF2677E6FF2677E6FF2677E6FF2677
          E6FF2778E9FF2574E7FF122D86B2000105080000000000000000000000000000
          0000000000010916445C215FDAFF2A84F7FF287CEBFF277BE8FF277BE8FF277B
          E8FF277BE8FF277BE8FF287EEEFF2B86F9FF1B4AB7E208143E5308143E531B4A
          B7E22B86F9FF287EEEFF277BE8FF277BE8FF277BE8FF277BE8FF277BE8FF287C
          EAFF2A84F8FF2363DDFF0A1A4F6A000001020000000000000000000000000000
          000000000000000000000A184A641F52C2EB2D88F7FF2B83EFFF2A80EAFF2A80
          EAFF2A80EAFF2B83F0FF2C84F5FF1C4BB7E2050D29370000000000000000050D
          29371C4BB7E22C84F5FF2B83F0FF2A80EAFF2A80EAFF2A80EAFF2B82EEFF2D89
          F9FF205AC9EE0B1C567300000000000000000000000000000000000000000000
          00000000000000000000000206090A184B652465DBFF2E8CF8FF2C85EEFF2B83
          EBFF2D87F1FF2F8EFAFF1D4CB7E208153E530000000000000000000000000000
          000008153E531D4CB7E22F8EFAFF2D87F1FF2B83EBFF2C84EDFF2F8DF9FF266B
          DFFF0B1C56730102080C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A184C662056C3EC3090F8FF308E
          F5FF2F8BF5FF1D4DB7E2050D2937000000000000000000000000000000000000
          000000000000050D29371D4DB7E22F8BF5FF2F8DF5FF3190F9FF225CC9EE0B1C
          5673000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000206090A184C67266ADBFF349B
          F8FF1E4DB7E208153E5300000000000000000000000000000000000000000000
          0000000000000000000008153E531E4DB7E2359DF9FF2870DFFF0B1C56730102
          080C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000917465F132F
          87B2050D29370000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050D2937133089B40A1A4F6A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010001
          0508000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000102070A00000102000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFF3FFCFFFF1FF8FFFC0FF03FFC07E03FF003C00FF001
          800FC0000003C0000003E0000007F000000FF800001FFC00003FFE00007FFF00
          00FFFF0000FFFE00007FFC00003FF800001FF000000FE0000007C0000003C000
          0003F001800FF003C00FFC07E03FFC0FF03FFF1FF8FFFF3FFCFFFFFFFFFFFFFF
          FFFF}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000027744558745469746C6500526566726573683B5265706561743B4261
          72733B526962626F6E3B52656C6F6164CD4DF6E90000091349444154785EC597
          6950545716C72F8B46D151474D3431EEA3A351A3E306384649D4382A91C50430
          C8441425A0B8B3AF028ADA54005101111A9C068128342E40836C02DAB23468AB
          C8DEA06C0DCD4E3774379E39AF7DCFE9E2CBD4D45815AA7E75EF8577CEF99FE5
          5DEA1100F843F9C305FC3F3F1AA31965F0519DAB07D5A4D11A0DF3B7FF498C5F
          5239F1FB1DC1D5176182F82494C4BBC43C4E5473A8793A8C37C723F6F1714F4E
          31CF9B535CE61557A2F4E494283DFEF554E07E93CF73892A3871E437EE5C3531
          1A6EB14F896B0C059FB8B2F9C485FD8438472351D4FA9810DF440191BD7BF701
          CAD09D5DB4FB667E0D44F25E814368A611E5F05060C631BF448132E569033C6B
          EA82FACE01908E8C50E0BE1F7F27813B4FEAC137BE54E918591075D03F6E3623
          6470E41D516780E674642121DEB74A89140F882AFB1F8F058CF7892FA97BD323
          0351F7209C0CCFAFFBBB89DD04330FCE92331179F2AE612534CB95201A5242A5
          4C012FA40AA8C6953AB7C947A003CF778B45E016FD64E06850DA6EF43906D11C
          5062D0519C087B440896F0437044D325BAC8FD415913B463908621052414D4C0
          41569A073A196BE6798715975F0DD518E4F980029E0DC8DFD32F870A9A677D72
          689229E1554B1F78C53E8523C13C4746449FE21D51C7E14A3E21D8235539A8E0
          76812973CF270906C498D1EB410554A0B3C6FE6138793577D0F048C8023D6387
          E9163EC92D5558997A1421A2A9C5672B514879CF309422253D4320EC1B863A89
          143C629E286D0292CD68111A4CF05EC508B10FC92138147C267B6DC7C8C23481
          A80B4428A0B41B9DA1A3E72822FF552B587827A7A383715BEDAE9B183B2580A9
          4B02E81DB80E7ABF448089F32D3817FF044A9B7B5522F89221E077CAA0AC6B08
          044DDD384779BDA6274217D233A14105EF416C7F7B4898E05A0E213CE388F497
          D03A3C02020CCC97C86886A006CBED135304BB8E45995222D6595E76586BC1DA
          3673E9B79328D6FC747EBBAEE5E5886F6D6F0CC7E4544209062F144BA1A05D0A
          CFD00727B71A0E5E78C046DB4F10CD6EF908A1B0B9944954A5DFB4C77E024E6E
          7D0D4EF60B2C5D111AABE89051603652A878DB0D468E09F5B3577C37992EA796
          1ADA94F355465E1B36FC12DE12935D098FD13EB76510725B0740281E84A32139
          CA9DB6AC25F4B31A926125D91F90815B34B60FE279DE2EAA8306EC25A53ABF75
          F03FB4BD4780995CBE530A9B6DC2BDA88164DE7306FA3C76E56E37BD2DB691F2
          426C65F6DB7EC86CEA87A2B601B8765F083F7BDDF6A16D353A8794E478682E21
          56DE715FE1B4CA9A7088F81D52788846D96F07E02192DD8C50677AFFAA4B0666
          2E09F255BBDD56309930E5645A898CD3DF171C791167A2102BF0A0A10F45F441
          AAE02DECF5E66244321ED16C4701478373080E42567AD68B3610E2C094A18032
          318255C868EC43FAA114CF0C6548CA935A586711924165C29492A90023608DE9
          D97F98BB24AAFCA5D6F4A8C8AEEB0273AFD456B4F9935A0B3589B17312ECC6A9
          363C1D0F3B4FC4830D2B13F858FA7B75BD70AFBE57B5C75EC1C65FC241DFEA1A
          E85A5E81B5162130AA0D5AF480E9209326CFF8CB175B6CA3E1392675FB751724
          5576412E2663E6C995A3CDA7C86464225D0D54A3666CE89C325CD93B0C2955DD
          9052DD0D8FB0059480493316CDA4D5EBD0C1B4D432FF64FFB974784F1AEC3F9F
          063F7972A10205DC7A218138A104D26A7BC0D43519ACCF67C081008A743888AB
          7AF9B4119D6D276FB71463E9125F4A20F19504B21A7AA909869DF657B651E545
          B499CC5BA50AC208303CC1E1F1CADF408B5401CD34027C1D632B3A805DDE015C
          AC82105B5887C955E21D139F5F05AB4C5999C4E07014A9EE19661C8DDB6C1FFF
          282CB70E420B5B20AAAC1D92D13084FB0CF638DF8AA004329963008230098C59
          67E2F237CBB35CC5FDEA2E600BC4108DB651A562B851DA0E9125ED10FAB805FC
          788DE079BF01021F36C126EB70C53CBD036BC837D611A4AA7B98713456FF60B4
          8F4358A1CAD83FB31102F3DEC23DA118FEE97B5FBED5FAD2064A242382813E4F
          D8B43FF4A26F7C31702AC410F1B40DC2F8AD1054D0ACF2E3F9A001DC3138B5B7
          F4BF0F8BB7BAB2281BA26B194A2ABB871801DA5F197A2E3770F85D19572E86B3
          3C11F866882028AF19D839B560E69EDC6A60E5BF9132A487509B82DEEB4CF962
          E90C039B1BA2C8A22608C86A5205F5A003BBDDAB070F5CDD6FBF84A53BFC1A75
          A62E98A1B25B63164C5E750D51306D18BFCAEA46ECF1483EB072DE80575A0378
          A78920024B18935B0B963E77E546A739D7BFB709FE010DA6506CB509DA61E8C0
          3E81FBA95FEF72DF67E59B0ABFE5BD010F0CEA86B8DCAD07E7D43AF0C364B6D8
          DE80D9EB6DF731F7015969C22242C910798130FD9C67706CC91A6BCE008B574B
          0547470D2A67D7702EB25E4B201867E2308B8715E182991B170E5DCC80431778
          A06B1E4039FE6CB56960B6EF9DE7D8EFF7819DB8B5E076B70E0E5F2D80B91B9D
          B2E9D7708C2ADE32C300F2BC73089191E712D987615C6CC4B2DC609704E7D21B
          548EDC300B57C40705C59688E1115E54E56219083B65AA8B2BB3AA13BE77E0BC
          F96CA1DEC22F57EDD13338705D7AF1A1089C52EAC0311905706BE0EB1F02A4D3
          161BE9D273A4395BDF999025DBFD494587EC3D288299054467917188BBDEAF49
          E098F012BC1F88C005B371E632D482333AA770C2B33F96D7FB6631E8595EBE8A
          B633177DE776E1606086AAEFAE686778FA16CC5CFD6B00759730D7F8E7EBCF10
          B2ED683C29C7E002A49C464DC484793BCF5B2DB3BC39687E311F3C536BC18B76
          E88241CFA4D4C219CCCE891675ED5133FC702A49B168938DFEC4E9F3672FDDE1
          DF78F65E151C6597C02CDD538D6327CEFA9CBEC4348ADBA464C66A1C9B2D761C
          22104B3F5046A32662FC8CF536CB16985C8B5F6EC551EE0DC88223D1A5702A4E
          08DE28C60BA7FC2447087691A560E6CF834D8762956BCC825CD1EECFB3D6D95A
          ED381603BA7B4360EA929FADA8849857988F023E5DE940C8E6C3379158F2578B
          18B2D81C3163934514E66C32EA9E9FF8E95AEBE5737705BACF330ECF9B6F725D
          38FF4736CCDBC386B9C611C2394661795F6EBFE4316DB5F5723AD03864F21C7D
          A7B4E9CB0FF3703F8919BC692BECC9B41547C8545CFFEB8FFA7F3AE67DA7FB38
          05994A41EF27A9DD0F5A1474401D0A7AAFF931BE961831DAEAA87F8CA833FA6B
          E9A3F1D1BE0B01E00FE5DFFF3B6B594FDCD6290000000049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000101010F09090978151515E8111111C40202022300000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000A0A0A851B1B1BF2242424FF232323FF111111B60303032A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000707
          075F202020FF282828FF303030FF303030FF262626FF151515D00303032A0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000B0B
          0B972B2B2BFF2D2D2DFF4A4A4AFF515151FF3A3A3AFF2A2A2AFF111111B60303
          032A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          0439262626E83F3F3FFF484848FF5C5C5CFF5A5A5AFF444444FF2D2D2DFF1717
          17D00303032A0000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000080808642E2E2EE8484848FF505050FF616161FF5D5D5DFF424242FF3030
          30FF131313B60303032A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000305050549313131E84C4C4CFF545454FF636363FF606060FF4A4A
          4AFF343434FF1A1A1AD00605032E110D01282F2404684C3B06A7664F09DE7057
          0AF470570AF4664F09DE4C3B06A72F240468110D012702010005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000309090966343434E8545454FF575757FF676767FF6262
          62FF444444FF393834FF40340DD1614B09D2795E0DFF7A5F0DFF7B600EFF7B60
          0EFF7B600EFF7B600EFF7A5F0DFF795E0DFF614B09D1392C047D0504000D0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000305050549373737E8565656FF585858FF6161
          61FF5C543CFF6F5812FF7D620EFF816410FF826510FF866810FF8A6C11FF8D6E
          11FF8D6E11FF8A6C11FF866810FF826510FF816410FF7D620EFF664F09DC231B
          034D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000003090909663A3A3AE85A5A5AFF5752
          3FFF745D13FF82650FFF856810FF8A6B11FF967512FF957311FF8D6D0EFF886A
          0DFF886A0DFF8D6D0EFF957311FF967512FF8A6C11FF856710FF82650FFF6A53
          0AE21A1402390000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000305050549484130EA7A62
          19FF896B11FF8B6D12FF957413FF937211FF6B520AD2493907992F250462241C
          044A241C044A2F250462493907996B520AD2937211FF957413FF8B6D12FF896B
          11FF69520ADE1A14023A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003483809B6886A
          11FF907113FF997815FF8D6F10FF5B4708B92A200452221A0341211A0440211A
          0440211A0440211A0440221A03412A2004525B4708B98D6F10FF997815FF9071
          13FF886A11FF4737069800000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001812023585680FFF9575
          15FF9C7B16FF927211FF513E07A1261D0445241C0440241C0440241C0440241C
          0440241C0440241C0440241C0440241C0440261D0445513E07A1927211FF9C7B
          16FF957515FF85680EFF17120133000000000000000000000000000000000000
          0000000000000000000000000000000000000101000344340595977615FF9C7B
          17FF9E7C15FF69520ACC291F0447261D0440261D0440261D0440261D0440261D
          0440261D0440261D0440261D0440261D0440261D0440291F044769520ACC9E7C
          15FF9C7B17FF967615FF44340595010100030000000000000000000000000000
          000000000000000000000000000000000000100D012569520BCFA18018FFA684
          19FF886B10F54535067B281F0440281F0440281F04402A2206422D250A452F26
          0B472F260B472D250A452A220642281F0440281F0440281F04404535067B886B
          10F5A68419FFA18018FF69520BCF100D01250000000000000000000000000000
          0000000000000000000000000000000000001B15023D806410E7A78519FFAA88
          1AFF72590BD8362A05592A2104402B210540362D114B40371D54433B2157453D
          2358453D2358433B21573F371C53362D114B2B2105402A210440362A05597259
          0BD8AA881AFFA78519FF806410E71B15023D0000000000000000000000000000
          000000000000000000000000000000000000241C0350967614FAAF8B1BFFAF8B
          1BFF69510AC73025044733290B464940255A524A3162524A3162524A3162524A
          3162524A3162524A3162534B3263524A31624940255A33290B46302504476951
          0AC7AF8B1BFFAF8B1BFF967614FA241C03500000000000000000000000000000
          000000000000000000000000000000000000251D03539D7C16FDB5911CFFB490
          1CFF6A5109C2302504424E45275D5D553B6A5E563C6B5E563C6B5E563C6B5E56
          3C6B5E563C6B5E563C6B5E563C6B5E563C6B5E563C6B4E45275D302504426A52
          09C2B4901CFFB5911CFF9D7C16FD251D03530000000000000000000000000000
          000000000000000000000000000000000000211A024A977714F4BF981FFFBC96
          1EFF71580BCD413611566A634A756A634A756A634A756A634A756A634A756A63
          4A756A634A756A634A756A634A756A634A756A634A756A634A75413611567158
          0BCDBC961EFFBF981FFF977714F4211A024A0000000000000000000000000000
          00000000000000000000000000000000000019130238856911E2C69E21FFC29B
          20FF80640FDD594C2572746D547D756E557E766E557E766E557E756E557E766E
          557E766E557E766E557E756E557E766E557E756E557E766E557E594C25728064
          0FDDC29B20FFC69E21FF856911E2191302380000000000000000000000000000
          00000000000000000000000000000000000009070015624C0ABFCEA522FFCAA2
          22FFAA8719FF715F26A3827A6288827A62888179618781796187817961878179
          6187827A6288817961878179618781796187827A628881796187715F26A3AA87
          19FFCAA222FFCEA522FF624C0ABF090700150000000000000000000000000000
          00000000000000000000000000000000000000000001382C047BC69E20FFD4AA
          24FFC39C20FF896C14E782795D8E89826B8E89826B8E89826B8E89826B8E8982
          6B8E89826B8E89826B8E89826B8E89826B8E89826B8E82795D8E896C14E7C39C
          20FFD4AA24FFC69E20FF382C047B000000010000000000000000000000000000
          0000000000000000000000000000000000000000000008060013886B10E5DCB1
          25FFD6AB25FFC49C1FFF927B34E9948A6CA5938C7596938C7596938C7596938C
          7596938C7596938C7696938C7596938C7596948B6EA5927C34E9C49C1FFFD6AB
          25FFDCB125FF886B10E508060013000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003E300680C49C
          1EFFE5B727FFDAAF25FFBC971FFF988033EB8B8160A098927B9C99927C9C9992
          7C9C99927C9C99927C9C98927B9C8B8160A0988033EBBC971FFFDAAF25FFE5B7
          27FFC49C1EFF3E30068000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000090700154D3C
          06A2DAB024FFEBBE29FFE0B327FFD3A924FFAB881AFF937D2FE0988955C79C8F
          67C39C8F67C3988955C7937D2FE0AB881AFFD3A924FFE0B327FFEBBE29FFDAB0
          24FF4D3C06A20907001500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000C09
          011B6A530CC3D3B023FFF2C52CFFE6B929FFE0B427FFD5AA24FFC8A021FFC19A
          1FFFC19A1FFFC8A021FFD5AA24FFE0B427FFE6B929FFF2C52CFFD3B023FF6B54
          0CC40C09011B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000090700154132058DA18A19E5E3C229FFF1CB2DFFEFC42BFFEDBE2AFFEABB
          29FFEABB29FFEDBE2AFFEFC42BFFF1CB2DFFE3C229FFA18A19E54132058D0907
          0015000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000020200062019024657470AA4AA931AFFCDB524FFEAD22DFFF3DD
          30FFF3DD30FFEAD22DFFCDB524FFAA931AFF57470AA420190246020200060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000007060011241C034F3D2F05874737
          069D4737069D3D2F0587241C034F070600110000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000083C494441545847A59709
          5055D719C7696D16A335696A9CA4CBB469A7994C676A93CCB436A69349ADA442
          C724A2661A930E412448D89700420A440D112B82104040D9028A80EC5A091451
          40165934189607BC0D1EEF010F1EEB6313FFFDBE73DF9357A256D333F37BE72E
          E77EFFFF39E79E73BF677597F21D62454651CBC5AC92EB6032CD145F23A4FA8B
          E2D6250A5B915144705DD822482F68C1C9DCC64B14EB11E2BB1CF87E0B1B7888
          03FEBFE544DE5550AC55C40A0E7CBF85DD3E927AB6190B0B8B30CEDE84716601
          D38454CF0BA68C129382394C4E33F398989A131867E771FC541D1B58437C8F03
          DF6F61038F269D69C4ECDCE26DA1291299201133E3CCD42C3187B1C959818199
          6066C433B119356CE009E2810DAC8CCBACC30CF542884CB208610A2E09514D8C
          1223E3C49884DE60C4F098518C42E4892A36F003E2810CF07CAD8A4AAB16433D
          4AC199110A2A040424C242268646A70583CCC814310D033DF3597C051BF821F1
          1007BEDFC206561F4EBC28E655888C3226110A6E46A79F826E7812DAE1290C08
          26313034090DA1374C232CFA3C1B584BB0017EB9EF59B801C3C3B5E6E0E7E562
          5E974424588405048393E81F9C90D04DA04F370EB556820D064514B381A78947
          4D71797ABF61842FF00D6EC04E1F23D685449E17C3CEC135441F43027D246416
          516BC7A0A25A39C08C09141AC6200CFA1EC86703BF24781ABE4FAC2458E3B611
          FE597120E6CCB329B90D79A905CD039E1FC7C237340EFE878A68C8A78480CA24
          A0A2E04A0ACE2272A6DF606214BD7D06F4AA0DE8518FA2A76F146A32EBF6F119
          780645C325300A719935DAE8948A2207F7D05F93268F88D81B561C8ECB5D9F5D
          7A7D4C4E0F4DD3D2F9C0FF2852CEB5C367FF5931B742808353DD4B6D7A4D022C
          D4AD1E21462153514DC89423E812E8A120C3CE0199482C68C56ECF084CD26A92
          29877132AF61DCC5FFC846D2E61DD2EAE1E359B5853D2A3D2D9B59DCBA750BEF
          7B8623E16C135CC93D0FBF102021B30807971841A782D1A353AE4707216A3AEF
          900F0BB38EBE1988CDAEC3AEBD61989FBF89615A215DBD43088F3B7781B4794A
          AC56C667D68EAB070CE8D31AC800F08E7328624E5D81CD766FC20B3676DED842
          F516BBFFE62FCC364F131E78FD2D096B813BACDF9488C9BA82EDF6FB44EC5EB5
          1E72EA444442C53469F37B61B5EA587A2D64F221A8681E79046CDEF6C027B1C5
          16942C1DC72C3BB7BC1EB3BC9DF9B8049BDFDC8BC5C55BE8269DB6CE011CFCFC
          4B7E39D7B181D54768B7BA21D3A297A6E12635B2DDE9067BB708387A46C2D12B
          0A2E01F126E2E01E9C08AFD093448A45BD845B7092D436507AC6D13B0A0E1E91
          F8D35F1DB1707311EDDD3A34B7A9117254EC0FBC3CADD67C965081D6760DBA14
          C398A746FBC28ED1D0B9C266074F81199A8A65E7B6A6635BCBEBE2586A6BCB35
          5DDBB4752F7C838E6096DE81B62E2DEA5A95D827ED0F3F62038F7F125386ABD7
          D5340A3ACCCC2DA0B35B09EB379CF19AAD3336BFE16A9A4B9AD7DB98CF97E6F9
          9BE7EEF8F35637BCBAC509AFD938A0BD4B213E4ECD37FA51DDD80BBF03056CE0
          276CE0897FD08653D3A440CBD7FDE22BC71F1A55FF90706DBDF503BCF4C79D78
          6923F1CA4EBCB871071DEFC08B2F4BBCF0F276137678E10F12BFDD6087F51BB6
          6113097B054440D9372862F2478B7B5F512B8367682E1BF8291B78329086A3B2
          AE07F5D754D08F1BA1E38F09EDF986C91961487CEBBF05526766442C2DC5642E
          53EFCF5775E0C3E0D36CE0676C60ADDFC102FCEB52272E5D958B0F8A92B65733
          0A13773AB7BC2E306FC5A673DE882CDB715D5E2343E1976DB4D965B2819FB381
          A77CF6E7A3A0FC06CAE8662F6DB31DB4C998E95C567F1B2C9F2DA96C4776692B
          F67CF4051BF8051B58E7199687D3E7AFA3886E7EDD3B8C962E1D5A4DB4D08BC9
          E7E66BA2A66B96F7C5F11DDA897BCBEEE7967D85F4C226B14392367FA4AC9E76
          0FC9A18B2DC8B9D086A60E2DAEB469F0AE5B3C7EB72508BF27B8BE17DCE65EED
          38D695AF34226E56492B92731AE1E093C6067EC5069E710DCE4672EE554ABBAF
          A1FA5A1FCA1B15700FC9A479CA82919665F4251D4E340C239938D13084A4FA21
          24D60D22AE5687E0736A0495AA1158A2C247454AF81528E07D5601C73419BDF5
          B3D8E57A1CAEC1E9286F90E362B30AA9F94D88CBAA83BD9730F09C30E012740A
          09A7EB9152D02CC44B6BBA514DCB85970A67C2872B352436887822AE6610B144
          4CB50EE1151AEC23E1806215FC0B499CF0C957C28B0CEC4EEBA215354B439D86
          CA46194AABBB50562F47624E038E51A2FA778F94DB23B06E8F5FFA58646A3592
          68144A6B7B5058D589AC0BD7C879362DA7791C2CEB43F4652DA268248E56E970
          A44A8B7F566A114C3DF72FA29E17AA44CF7DF21542DC334F0E87D42E0C513263
          EF9582B4E2468AD98112EA58DCA97A1C4AAAA491491A276DB10AD6BCBECDDF61
          975BA2FE3DB764BCE79A8CBFB92460DBEE28D035B196434A5588F8B70687988A
          7E84976BB0BFAC9F4495F06548D88784BDF214F0C855C02D470EFB944E5AFF46
          BC651F8D57B70663F38E4F61FD7638AC777E8A4D7661A3BFD9F0CE87A4CDB9A2
          488F1E279E2178637896E0A159EF45ABC340A97840910201D4437F12F2CF97C3
          8F703FDD03A74C199C3264D8932E1373CEC3EE90DA49E25DB03FD9491B8F114E
          D2727B85E3119C093D4FB0068B8B8444A464C4C3A60B9CB3AD26D672423242F3
          3832C64839FF304359B28E7AA7E3AC98D0EA79A7338A7A6019A6E5F663823BC9
          7139DFE474CC9C178AC2262C61438F39F9A75D760ECCA2B44A82772F27867AC5
          F066E2E8CB6460B70F932EE19D0E07E27DEF34BCEB9A544BB158DC32233673D7
          C237CDD9313FCCFF6C9E34C1590CC34368E629139C6058C2F7F8F907FE77CCC5
          3C12E654FD4EF0B4FD2FEEFA5FC0CACACAEA3F30264B90D6BEE6360000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          200000000000001000000000000000000000000000000000000045711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF678C47FF8BA671FFB9CAAAFFDCE5D5FFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF5B8339FF7E9D63FFA2B8
          8EFFD1DCC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFE8EDE3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF4F7F2FFD2DCC8FFD2DCC8FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFF8BA772FF4571
          1EFF8BA772FFFFFFFFFF97AF81FF45711EFF8BA772FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFF4F7F2FF517A
          2CFF517A2CFFE9EEE4FF517A2CFF45711EFFE9EEE4FFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFA2B8
          8FFF45711EFF5C843AFF45711EFF8BA772FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFF4F7
          F2FF517A2CFF45711EFF45711EFFE9EEE4FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF5C843AFF45711EFF517A2CFFF4F7F2FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFB9CB
          ABFF45711EFF517A2CFF45711EFFA2B88FFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFF5C84
          3AFF45711EFFD2DCC8FF517A2CFF517A2CFFF4F7F2FFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFB9CBABFF4571
          1EFF688C48FFFFFFFFFFA2B88FFF45711EFF97AF81FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFD2DC
          C8FFE9EEE4FFFFFFFFFFF4F7F2FFD2DCC8FFDDE5D6FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF729555FF96AF80FFADC19CFFD1DC
          C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF5B8339FF7E9D63FFA2B88EFFC4D3B8FFE8EDE3FFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          00000707070D1B1B1B2B1D1D1D2B1F1F1F2B1F1F1F2B1F1F1F2B1F1F1F2B1E1E
          1E2B1E1E1E2B1E1E1E2B1E1E1E2B1E1E1E2B1E1E1E2B1D1D1D2B1D1D1D2B1D1D
          1D2B1D1D1D2B1D1D1D2B1D1D1D2B1D1D1D2B1C1C1C2B03030305000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001D1D1D55E4E4E4FFE3E3E3FFE1E1E1FFE4E4E4FFDFDFDFFFDEDEDEFFDDDD
          DDFFDBDBDBFFDADADAFFD9D9D9FFD8D8D8FFD7D7D7FFD5D5D5FFD4D4D4FFD3D3
          D3FFD2D2D2FFD1D1D1FFD0D0D0FFD0D0D0FFD0D0D0FF6E6E6EA6000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00001B1B1B56EFEFEFFFEEEEEEFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FFE8E8
          E8FFE7E7E7FFE5E5E5FFE4E4E4FFE3E3E3FFE2E2E2FFE0E0E0FFDFDFDFFFDEDE
          DEFFDDDDDDFFDCDCDCFFDADADAFFDADADAFFDADADAFFE5E5E5FF5B5B5B930000
          0000000000000000000000000000000000000000000000000000000000000000
          00001B1B1B56F1F1F1FFF0F0F0FFEEEEEEFFEBEBEBFFEBEBEBFFE9E9E9FFE8E8
          E8FFE8E8E8FFE7E7E7FFE6E6E6FFE4E4E4FFE3E3E3FFE2E2E2FFE1E1E1FFDFDF
          DFFFDEDEDEFFDDDDDDFFDCDCDCFFDADADAFFDADADAFFE7E7E7FFE8E8E8FF5656
          567B000000000000000000000000000000000000000000000000000000000000
          00001C1C1C57F1F1F1FFF2F2F2FFF0F0F0FFEBEBEBFFDFDFDFFFC7C9D8FFB5B8
          D6FFD2D3DAFFE2E2E2FFE7E7E7FFE6E6E6FFE4E4E4FFE3E3E3FFE2E2E2FFE1E1
          E1FFE0E0E0FFDEDEDEFFDDDDDDFFDCDCDCFFDBDBDBFFE8E8E8FFEDEDEDFFE5E5
          E5FE3D3D3D660000000000000000000000000000000000000000000000000000
          00001C1C1C57F1F1F1FFDEDEDEFFF0F0F0FFEBEBEBFFBABDDCFF6C76D5FF6A74
          D1FF5862CAFFA2A6D1FFDDDDDDFFE5E5E5FFE6E6E6FFE5E5E5FFE3E3E3FFE2E2
          E2FFE1E1E1FFE0E0E0FFDEDEDEFFDDDDDDFFDCDCDCFFE9E9E9FFEFEFEFFFEDED
          EDFFE0E0E0FC3232325300000000000000000000000000000000000000000000
          00001C1C1C58F1F1F1FFD5D5D5FFF0F0F0FFEEEEEEFFCCCFE9FF737ED8FFB7BB
          DBFFC6C8DDFF5D67CBFF999DD0FFDDDDDDFFE6E6E6FFE6E6E6FFE5E5E5FFE3E3
          E3FFE2E2E2FFE1E1E1FFE0E0E0FFDFDFDFFFDDDDDDFFEAEAEAFFF0F0F0FFEFEF
          EFFFECECECFFD7D7D7F72B2B2B3F000000000000000000000000000000000000
          00001C1C1C58F1F1F1FFF1F1F1FFF1F1F1FFEEEEEEFFF1F1F1FFB8BDE5FF7681
          D7FFB7BBDBFFCCCEDCFF515AC7FFBABCD6FFDFDFDFFFE7E7E7FFE6E6E6FFE5E5
          E5FFE4E4E4FFE2E2E2FFE1E1E1FFE0E0E0FFDFDFDFFFECECECFFEFEFEFFFEEEE
          EEFFEDEDEDFFEBEBEBFFC7C7C7F01D1D1D310000000000000000000000000000
          00001C1C1C59F1F1F1FFF1F1F1FFF0F0F0FFEEEEEEFFF2F2F2FFF0F0F0FFD5D7
          EAFF818AD8FF838BD6FF9097D5FF545EC7FFDADADDFFE0E0E0FFE4E4E4FFE5E5
          E5FFE5E5E5FFE4E4E4FFE3E3E3FFE1E1E1FFE0E0E0FFE0E0E0FFDEDEDEFFDCDC
          DCFFDBDBDBFFDADADAFFDBDBDBFF7C7C7CCC0000000000000000000000000000
          00001C1C1C59F1F1F1FFF1F1F1FFF0F0F0FFEEEEEEFFF2F2F2FFF1F1F1FFF0F0
          F0FFEEEEEFFFB3B8E2FF606BCFFF434EC6FF8E94D1FFE0E0E0FFDFDFDFFFDFDF
          DFFFE0E0E0FFE1E1E1FFE2E2E2FFE2E2E2FFE1E1E1FFE0E0E0FFDFDFDFFFDCDC
          DCFFDADADAFFD9D9D9FFD9D9D9FF828282D40000000000000000000000000000
          00001C1C1C59F0F0F0FFF1F1F1FFF0F0F0FFEEEEEEFFF1F1F1FFF1F1F1FFF0F0
          F0FFF0F0F0FFF0F0F0FFE9EAEEFF959CDAFF3C47C3FF4E57C4FF9498D2FFDCDC
          E4FFE4E4E4FFE0E0E0FFDFDFDFFFDEDEDEFFDEDEDEFFDFDFDFFFDDDDDDFFDBDB
          DBFFDADADAFFD9D9D9FFD8D8D8FF828282D40000000000000000000000000000
          00001C1C1C59F0F0F0FFF0F0F0FFF0F0F0FFEEEEEEFFF1F1F1FFF1F1F1FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFEBEBEEFF515CCAFF5D66C9FF4C55C2FF222C
          B6FF5D64C4FF9FA3D4FFDBDCE3FFE3E3E3FFD0D0DCFF6466BCFF292BA8FF4647
          AFFFC1C1D4FFDBDBDBFFDBDBDBFF838383D40000000000000000000000000000
          00001D1D1D5AF0F0F0FFF0F0F0FFF0F0F0FFEEEEEEFFF1F1F1FFF1F1F1FFF1F1
          F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF949ADAFF535EC9FFE5E5E6FFBEC0
          DCFF6F75C9FF1D26B2FF0C14ABFF4449B8FF1C21AAFF0E13A4FF4345B2FF0001
          9CFF4747B0FFDFDFDFFFDEDEDEFF858585D40000000000000000000000000000
          00001D1D1D5BF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFF1F1F1FFF1F1F1FFF1F1
          F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFCED1E8FF4451C8FFBCBFDFFFE9E9
          E9FFEBEBEBFFE9E9EAFF989BD2FF050EA8FF2026ADFF191EA9FF0D11A3FF1B1D
          A6FF8D8DC7FFE1E1E1FFE0E0E0FF868686D40000000000000000000000000000
          00001D1D1D5BF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF1F1F1FFF1F1F1FFF1F1
          F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFEFEFEFFF5F6BD0FF868DD6FFEBEB
          EBFFECECECFFDEDEE8FF2730B5FF232BB2FFD8D8E3FFE7E7E7FFE6E6E6FFE5E5
          E5FFE3E3E3FFE2E2E2FFE1E1E1FF868686D40000000000000000000000000000
          00001D1D1D5CF0F0F0FFD1D1D1FFEEEEEEFFEDEDEDFFF0F0F0FFF1F1F1FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FF9199DBFF5A65CEFFEEEE
          EEFFEDEDEDFF6068C8FF0D19B0FFBABCDDFFEAEAEAFFE8E8E8FFE7E7E7FFE6E6
          E6FFE5E5E5FFE3E3E3FFE2E2E2FF878787D40000000000000000000000000000
          00001D1D1D5CF0F0F0FFE0E0E0FFEFEFEFFFEDEDEDFFF0F0F0FFF1F1F1FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FFBEC2E6FF4D5ACDFFDADC
          ECFFBABEE3FF212EBAFF6971CBFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FFE7E7
          E7FFE6E6E6FFE5E5E5FFE4E4E4FF888888D40000000000000000000000000000
          00001E1E1E5DF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FFE6E7EFFF5563D0FFAEB3
          E3FF545FCBFF3643C2FFE1E2EEFFF0F0F0FFEDEDEDFFEBEBEBFFEAEAEAFFE9E9
          E9FFE7E7E7FFE6E6E6FFE5E5E5FF898989D40000000000000000000000000000
          00001E1E1E5DF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FF7783D9FF5966
          D1FF3F4DC8FF9EA4DDFFF3F3F3FFF2F2F2FFF2F2F2FFEEEEEEFFEBEBEBFFEAEA
          EAFFE9E9E9FFE8E8E8FFE6E6E6FF8A8A8AD40000000000000000000000000000
          00001D1D1D5DF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FF9BA3E0FF5563
          D1FF5B68D1FFEDEEF1FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF0F0F0FFECEC
          ECFFEAEAEAFFE9E9E9FFE8E8E8FF8B8B8BD40000000000000000000000000000
          00001D1D1D5EF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFB2B9E6FF5C6B
          D4FFB6BBE5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF1F1
          F1FFECECECFFEAEAEAFFE9E9E9FF8B8B8BD40000000000000000000000000000
          00001616165EF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF919BE1FF6372
          D8FFD7DAECFFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF1F1F1FFECECECFFEAEAEAFF8C8C8CD40000000000000000000000000000
          00000F0F0F5FF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFECEDF0FF7A88DFFF6B79
          DBFFC7CCEAFFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF1F1F1FFEDEDEDFF8D8D8DD40000000000000000000000000000
          00000F0F0F5FF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFD9DCEDFF8290E2FF7282
          DEFFB6BCE7FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF2F2F2FF8E8E8ED40000000000000000000000000000
          00000F0F0F60F0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFCBD0ECFFA0AAE7FF8A96
          E2FFB2B9E7FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF4F4F4FFF4F4F4FFF3F3F3FF909090D40000000000000000000000000000
          00000F0F0F60F0F0F0FFD1D1D1FFEEEEEEFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFCDD2EDFFAAB3E9FF9BA6
          E6FFB6BDE9FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF4F4F4FFF3F3F3FF909090D40000000000000000000000000000
          00000F0F0F60F0F0F0FFE1E1E1FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFE3E5EFFF98A5E9FF8997
          E5FFCBD0ECFFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF4F4F4FF919191D40000000000000000000000000000
          00000F0F0F60F0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD7DBEEFFC9CE
          ECFFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FF919191D40000000000000000000000000000
          00000F0F0F61F0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FF919191D40000000000000000000000000000
          00000F0F0F61F0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
          F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
          F2FFF3F3F3FFF3F3F3FFF3F3F3FF909090D40000000000000000000000000000
          0000060606474D4D4DAA4D4D4DA94D4D4DA94F4F4FA84C4C4CA84C4C4CA84C4C
          4CA84C4C4CA84C4C4CA74C4C4CA74B4B4BA64C4C4CA64C4C4CA64C4C4CA54C4C
          4CA54C4C4CA54C4C4CA54C4C4CA54C4C4CA44C4C4CA44B4B4BA34B4B4BA34B4B
          4BA24B4B4BA24B4B4BA24B4B4BA2383838840000000000000000000000000000
          0000000000020000000300000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000001000000010000
          0001000000010000000100000001000000010000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1507274F3D186E0F0C0514020202041818
          18252626263A302F2F4A3C3B3B5C403F3F634746466E5251507F5251507F5251
          507F55555484636261996564639C6463629B6463629B6463629B6463629B6463
          629B6463629B6564639C63626199555554845251507F5251507F5151507E4444
          436A4040406437383A55544B3686A8802AFFB6903DFFA9843FDB0E0E0E175150
          507D6E6A69A67E7773BA82888CD7898F94E28A9194E490969AED92999DF1939A
          9DF2939A9DF2939A9DF2959B9FF5989FA3FA989FA3FA989FA3FA989FA3FA989F
          A3FA989FA3FA949B9FF4939A9DF2939A9DF2939A9DF292999DF18F9699EC8A90
          94E3869199E18A897AE4A77C21FFB58E3BFFC09746FFC39B50F0000000000000
          00001624293805A2DDF400ABEBFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00AB
          EAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00AB
          EAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00AC
          EFFF07A6DDFFA57C22FFB38B38FFBE9643FFD5AC5FFF7C683E8D000000000000
          00000599CFE30BABE5FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAA
          E4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAA
          E4FF0CAAE4FF0CAAE4FF0CAAE5FF0BAAE5FF0BAAE5FF0CAAE4FF0BABE6FF05AC
          ECFFA27D2CFFB38935FFBD9544FFD0A351FFC3A365D400000000000000000000
          000011ADE9FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11AC
          E6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11AC
          E6FF0EABE6FF06ABE9FF02AAE9FF13AAE4FF0EAAE5FF02ABEAFF00AFF6FF8D83
          44FFB3862FFFBB9342FFCC9D48FFDFC688FF0707060B00000000000000000000
          000015AEE8FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14AC
          E5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF0DAC
          E7FF1BACE3FF80B2C4FFBCB4B0FFC3B4AEFFC4B4AEFFAFB3B7FF77AAB5FFB481
          23FFBB923EFFC69947FFF8C674FF21ABDAFF0000000000000000000000000000
          00001AB1E9FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAF
          E7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF11AEE9FF42B0
          DAFFC8B8B2FFC0B9B6FFBEB8B6FFBDB7B6FFBDB7B6FFBEB9B6FFBEBABAFFB8B8
          B9FFC59B4CFFF8BC63FF4CB1C9FF0FAEEDFF0000000000000000000000000000
          00001EB1EBFF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0
          E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1AAFE8FF30B1E2FFCEBE
          B7FFC0BDBBFFBCBABAFF8BBDD1FF85C7DEFF86C5DDFF90BACAFFC5BCB8FFBCBD
          BFFFCABEB5FF51B9D2FF10AEEEFF1EB0E8FF0000000000000000000000000000
          000022B2EAFF21B0E7FF21B0E7FF21B0E7FF21B0E7FF21B0E7FF21B0E7FF21B0
          E7FF21B0E7FF21B0E7FF21B0E7FF21B0E7FF21B0E7FF13AFEBFFAABDC5FFC5C1
          BFFFBBBEBFFF78C8E7FF89D4EFFF79CFEFFF79CFF0FF83D4F3FF73C0DEFFCAC1
          BCFFC8C1BFFF6DB7D6FF19AFE9FF21B0E7FF0000000000000000000000000000
          000027B5ECFF27B3E9FF27B3E9FF27B3E9FF27B3E9FF27B3E9FF27B3E9FF27B3
          E9FF27B3E9FF27B3E9FF27B3E9FF27B3E9FF24B2E9FF2FB3E6FFD5C6C0FFCAC5
          C2FF87C3DCFF84D0EDFF79CDEEFF7DCEEDFF7CD0EEFF7ED1F0FF7AD2F5FF93BF
          D0FFCBC5C3FFC0C4C5FF18B1ECFF27B3E9FF0000000000000000000000000000
          00002BB5EDFF2BB4EAFF2BB4EAFF2BB4EAFF2BB4EAFF2BB4EAFF2BB4EAFF2BB4
          EAFF2BB4EAFF2BB4EAFF2BB4EAFF2BB4EAFF25B3EAFF58B8E0FFD3CAC6FFD0C9
          C6FF70C8EBFF7BCEEDFF7DCFEEFF7ED0EFFF81D1F0FF80D1F1FF90D8F4FF77C5
          E3FFCFC9C6FFDDCEC9FF24B2EAFF29B4EAFF0000000000000000000000000000
          00002FB6EEFF2EB5EBFF2EB5EBFF2EB5EBFF2EB5EBFF2EB5EBFF2EB5EBFF2EB5
          EBFF2EB5EBFF2EB5EBFF2EB5EBFF2EB5EBFF29B3ECFF5EBCE0FFD7CECAFFD3CB
          C8FF73CCEDFF80CFEEFF80CFEDFF82D0EEFF82D1EFFF80D0EFFFADE3F6FF75C6
          E5FFD2CBC9FFE2D5D0FF2CB4E9FF2DB4EBFF0000000000000000000000000000
          000037B9EFFF32B4EAFF34B5EAFF34B5EAFF34B5EAFF34B5EAFF34B5EAFF34B5
          EAFF34B5EAFF34B5EAFF34B5EAFF34B5EAFF31B5EBFF45B9E7FFE2D6D1FFD5CF
          CCFF79C5E5FFADDFF4FF8ED3EFFF85D1EFFF8DD4F1FFABE0F5FFA7E1F8FF8BC3
          DAFFD4CECCFFDEDAD8FF23B2ECFF34B5EAFF0000000000000000000000000000
          00004CC3F1FF3FBAECFF33B6EBFF36B6EBFF36B6EBFF36B6EBFF36B6EBFF36B6
          EBFF36B6EBFF36B6EBFF36B7EBFF38B8ECFF37B8ECFF28B4EDFFD5D9DBFFD3CF
          CEFFBCCBD3FF6ECAF1FFB5E4F5FFBAE5F6FFBAE5F7FFAEE4F7FF64C5EBFFD5D0
          CDFFDDD6D4FFA2D0E3FF2DB5ECFF38B8ECFF0000000000000000000000000000
          000032A8DBEB86DCF8FF59C7F1FF4CBFEEFF4DC0EEFF4DC0EEFF4DC0EEFF4DC0
          EEFF4DC0EEFF4EC0EEFF45BDEDFF34B5EBFF39B7ECFF36B7EDFF68C1E6FFF0E3
          DDFFD5D1CFFFC0CED3FF75C5E6FF6ECBF0FF70CAEFFF7EC5E3FFD3D0D0FFD5D3
          D2FFF3E8E4FF3CB6E9FF39B8EDFF3BB9EDFF0000000000000000000000000000
          00001072B4DF3EB9EDFF6BD3F7FF75D7F7FF73D6F7FF73D6F7FF73D6F7FF73D6
          F7FF73D6F7FF73D6F7FF7EDAF8FF90E2FAFF60C8F2FF3BB7ECFF33B7EFFF93CB
          E4FFF5E8E2FFD8D4D3FFDBD4D1FFDCD3D0FFDBD3D0FFD9D3D1FFDFDBD9FFF9ED
          E6FF5FBEE5FF3AB8EFFF41B9EEFF41B9EEFF0000000000000000000000000000
          00000869B4DF0671C7FF0B7CCEFF0B7ACDFF0B7ACDFF0B7ACDFF0B7ACDFF0B7A
          CDFF0B7ACDFF0B79CCFF1284D0FF29A1E0FF70D3F7FF6BCEF3FF40B9ECFF37B9
          EFFF6BC2E7FFDEE3E6FFF4E9E4FFF0E8E4FFF1E9E6FFF8EBE5FFC7DCE5FF4FBB
          EAFF3DBAEEFF44BCEDFF44BCEDFF44BCEDFF0000000000000000000000000000
          00000D72BBDF0E7DD1FF0D7CD1FF0D7CD1FF0D7CD1FF0D7CD1FF0D7CD1FF0D7C
          D1FF0D7CD1FF0D7CD1FF0D7BD0FF0977CEFF1588D7FF70D3F5FF54C1F0FF48BB
          EEFF45BBEFFF3AB8F0FF56BDEBFF6EC1E5FF6CC1E6FF49BAECFF3CB9EFFF47BC
          EFFF4ABDEFFF4ABDEFFF4ABDEFFF4ABDEFFF0000000000000000000000000000
          00001379C3E01686DAFF1285D8FF1386D9FF1386D9FF1386D9FF1386D9FF1386
          D9FF1386D9FF1386D9FF1386D9FF1386D9FF0E81D6FF2297E0FF87DDF9FF47BB
          EEFF4DBDF0FF4EBEF0FF4BBDF0FF49BCF0FF49BCF0FF4CBDF0FF4EBEF0FF4EBE
          F0FF4EBEF0FF4EBEF0FF4EBEF0FF4CBDF0FF0000000000000000000000000000
          00001071B7CC429FE3FF0E88DFFF1289DFFF1289DFFF1289DFFF1289DFFF1289
          DFFF1289DFFF1289DFFF1289DFFF1289DFFF1289DFFF0B84DDFF41B2ECFF80D6
          F6FF4ABAEFFF51BEF1FF51BEF1FF51BEF1FF51BEF1FF51BEF1FF51BEF1FF51BE
          F1FF51BEF1FF51BEF1FF50BDF0FF59C3F2FF0000000000000000000000000000
          0000062033382798E8FF57AAEBFF53A9E9FF53A9E9FF53A9E9FF53A9E9FF53A9
          E9FF53A9E9FF53A9E9FF53A9E9FF53A9E9FF53A9E9FF52A9E9FF52A8E8FF69CC
          F4FF88DBF8FF51BDF0FF52BEEFFF52BEEFFF52BEEFFF52BEEFFF52BEEFFF52BE
          EFFF52BEEFFF51BEEFFF5DC4F2FF71CFF4FF0000000000000000000000000000
          00000000000001050809092940420A293F410B2A3F410B293F410B293F410B29
          3F410B293F410B293F410B293F410B293F410B293F410B293F4109283D3F1B46
          5F6564C6F2FF92E0FAFF92DFFAFF92DFFAFF92DFFAFF92DFFAFF92DFFAFF92DF
          FAFF92DFFAFF92E0FAFF8BDCF9FF53B6E6F50000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012252E304A9DC6D15AC0F2FF5AC0F2FF5AC0F2FF5AC0F2FF5AC0F2FF5AC0
          F2FF5AC0F2FF5AC0F2FF5BC0F2FF18323E420000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004090C0C102028280F1F26260F1F26260F1F26260F1F
          26260F1F26260F1F262600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object sknController: TdxSkinController
    Kind = lfOffice11
    ScrollbarMode = sbmClassic
    SkinName = 'UserSkin'
    UseImageSet = imsAlternate
    Left = 65
    Top = 305
  end
  object imgNav: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 16384071
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020233217D056A46FF056A46FF056A46FF056A46FF056A46FF056A
          46FF056A46FF056A46FF0233217D000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0A6F4AFF0A6F4AFF0A6F4AFF0A6F4AFF0A6F4AFF0A6F
          4AFF0A6F4AFF0A6F4AFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0C724DFF0C724DFF0C724DFF0C724DFF0C724DFF0C72
          4DFF0C724DFF0C724DFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0E744FFF0E744FFF0E744FFF0E744FFF0E744FFF0E74
          4FFF0E744FFF0E744FFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF117751FF117751FF117751FF117751FF117751FF1177
          51FF117751FF117751FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF147A54FF147A54FF147A54FF147A54FF147A54FF147A
          54FF147A54FF147A54FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF187D57FF187D57FF187D57FF187D57FF187D57FF187D
          57FF187D57FF187D57FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF1B815AFF1B815AFF1B815AFF1B815AFF1B815AFF1B81
          5AFF1B815AFF1B815AFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010504482FAF1F855DFF1F855DFF1F855DFF1F855DFF1F855DFF1F85
          5DFF1F855DFF1F855DFF04482FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000022E1E7103442DA703452DAA03452DAA03452DAA03452DAA03452DAA0345
          2DAA03462EAC055E3EE4238860FF238860FF238860FF238860FF238860FF2388
          60FF238860FF238860FF055E3EE403462EAC03452DAA03452DAA03452DAA0345
          2DAA03452DAA03452DAA03452DAA0232217B0000000000000000000000000000
          00000F6F4BF5268C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF10744FFF0001010400000000000000000000
          0000106F4CF52A8F67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF117550FF0000000000000000000000000000
          000011704DF52E936BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF127651FF0000000000000000000000000000
          000012714EF532976EFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF137752FF0000000000000000000000000000
          000014734FF5379B72FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF157953FF0000000000000000000000000000
          0000157450F53A9F75FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF167A54FF0000000000000000000000000000
          0000167552F53EA279FF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF187B56FF0000000000000000000000000000
          0000187B56F54AB88BFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE
          8FFF4DBE8FFF4BB98CFF46AC82FF44A77DFF44A77DFF44A77DFF44A77DFF44A7
          7DFF44A77DFF46AC82FF4BB88BFF4DBD8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE
          8FFF4DBE8FFF4DBE8FFF4BBA8DFF1B825AFF0000000000000000000000000000
          0000022E1E7103442DA703452DAA03452DAA03452DAA03452DAA03452DAA0345
          2DAA03452DAA045D3DE349AF85FF48AB82FF48AB82FF48AB82FF48AB82FF48AB
          82FF48AB82FF49AF85FF06603FE403462EAC03452DAA03452DAA03452DAA0345
          2DAA03452DAA03452DAA03452DAA0232217B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA4BAF85FF4BAF85FF4BAF85FF4BAF85FF4BAF85FF4BAF
          85FF4BAF85FF4BAF85FF044930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA4FB288FF4FB288FF4FB288FF4FB288FF4FB288FF4FB2
          88FF4FB288FF4FB288FF044930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA52B58BFF52B58BFF52B58BFF52B58BFF52B58BFF52B5
          8BFF52B58BFF52B58BFF054930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA56B88EFF56B88EFF56B88EFF56B88EFF56B88EFF56B8
          8EFF56B88EFF56B88EFF054930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA59BB91FF59BB91FF59BB91FF59BB91FF59BB91FF59BB
          91FF59BB91FF59BB91FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA5CBE93FF5CBE93FF5CBE93FF5CBE93FF5CBE93FF5CBE
          93FF5CBE93FF5CBE93FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA5EC095FF5EC095FF5EC095FF5EC095FF5EC095FF5EC0
          95FF5EC095FF5EC095FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA65CC9FFF67D0A2FF67D0A2FF67D0A2FF67D0A2FF67D0
          A2FF67D0A2FF65CDA0FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000232217B289067FF2A946AFF2A946AFF2A946AFF2A946AFF2A94
          6AFF2A946AFF289167FF0233227D000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFC003FFFFC003FFFFC003FFFFC003FFFFC003FFFFC0
          03FFFFC003FFFFC003FFFFC003FFC0000003C0000001C0000003C0000003C000
          0003C0000003C0000003C0000003C0000003C0000003FFE003FFFFE003FFFFE0
          03FFFFE003FFFFE003FFFFE003FFFFE003FFFFE003FFFFE003FFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B1B547110287CA711297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA0C1D5B7B0000000000000000000000000000
          00001235B6F5042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF1136BEFF0000020400000000000000000000
          00001338B8F50834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF133AC0FF0000000000000000000000000000
          0000153CBAF50E41CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF153EC2FF0000000000000000000000000000
          00001640BCF5144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF1742C4FF0000000000000000000000000000
          00001844BEF51B5EDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1948C7FF0000000000000000000000000000
          00001A48C0F5216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF1B4CC9FF0000000000000000000000000000
          00001C4DC3F52778E7FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF1E51CCFF0000000000000000000000000000
          00001F54C8F53399F6FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF349BF8FF2159D1FF0000000000000000000000000000
          00000B1B547110287CA711297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA0C1D5B7B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003C0000001C0000003C0000003C000
          0003C0000003C0000003C0000003C0000003C0000003FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000006040F022E1E71045035C2011E144B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002352382076643F1096F4AFF055D3EE001150E3400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000006040F0236
          23840A6E4AFF0D734DFF0D734DFF0D724DFF065D3EE001201550000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000023623850A69
          46F2107550FF107650FF107650FF107650FF0E734EFF075E3FE001150E340000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000060410033724870E734EFF1379
          53FF147953FF147953FF147953FF147953FF147953FF137852FF075F3FE00120
          1550000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000033724870E6D4AF2177C56FF177D
          56FF177D56FF177D56FF177D56FF177D56FF177D56FF177D56FF147A53FF0760
          3FE001150E340000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000006041003382587147953FF1B815AFF1B825AFF1C82
          5AFF1B825AFF1C825AFF1B825AFF1C825AFF1B825AFF1C825AFF1B825AFF1A80
          59FF096241E00120155000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000339258913724EF31F855DFF20865EFF20865EFF2086
          5EFF20865EFF20865EFF20865EFF20865EFF20865EFF20865EFF20865EFF2086
          5EFF1B815AFF0A6242E001150E35000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000060410043926891A7E59FF248962FF258A62FF258A62FF258A62FF258A
          62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A
          62FF258A62FF238860FF0C6443E1012116520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000043A268A197854F3288D65FF298E66FF288E66FF298E66FF288E66FF298E
          66FF288E66FF298E66FF288E66FF298E66FF288E66FF298E66FF288E66FF298E
          66FF288E66FF298E66FF238861FF0C6444E101150E3500000000000000000000
          00000000000000000000000000000000000000000000000000000004020B0438
          258522865FFF2E936BFF2E936BFF2E936BFF2E936BFF2E936BFF2E936BFF2E93
          6BFF2F946CFF2F9B70FF28946AFF30996FFF2E936BFF2E936BFF2E936BFF2E93
          6BFF2E936BFF2E936BFF2E936BFF2C9069FF0E6545E101211652000000000000
          000000000000000000000000000000000000000000000000000001160E36156D
          4CE0339970FF33976FFF33976FFF33976FFF33976FFF33976FFF33976FFF3397
          6FFF359F74FF208A61FF09563AC2289369FF359D73FF33976FFF33976FFF3397
          6FFF33976FFF33976FFF33976FFF33976FFF2C9068FF0E6646E101150E350000
          000000000000000000000000000000000000000000000000000000080514023E
          299929966AFF39A477FF389D73FF389D73FF389D73FF389D73FF389F74FF39A5
          78FF1B7D57EF023220780009061703422B9F2B976CFF39A377FF389D73FF389D
          73FF389D73FF389D73FF389D73FF389D73FF389D73FF359A70FF106847E10121
          1652000000000000000000000000000000000000000000000000000000000008
          0514064E34B32C986CFF3FA87CFF3CA177FF3CA177FF3DA277FF3EA97CFF248E
          65FF02301F750004030C0000000000090617085338BC2F9B6FFF3FA77BFF3CA1
          77FF3CA177FF3CA177FF3CA177FF3CA177FF3CA177FF3CA177FF34986FFF1169
          48E101150E350000000000000000000000000000000000000000000000000000
          000000070513023D28952F9A6FFF43AD82FF43A97EFF43AE82FF1D7F59EE0230
          1F74000000000000000000000000000000000009061704432CA134A074FF44AD
          81FF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF3EA2
          79FF136A4AE20122165300000000000000000000000000000000000000000000
          00000000000000060411074D33B0319D71FF4BBB8DFF289368FF022E1E710004
          020B0000000000000000000000000000000000000000000906180A5639BE37A2
          77FF48B085FF46AA80FF46AA80FF46AA80FF46AA80FF46AA80FF46AA80FF46AA
          80FF3CA077FF146C4BE201160E37000000000000000000000000000000000000
          000000000000000000000006041102382489136747CB022B1C68000000000000
          0000000000000000000000000000000000000000000000000000000906180544
          2DA23BA67AFF4DB58AFF4BAE85FF4BAE85FF4BAE85FF4BAE85FF4BAE85FF4BAE
          85FF4BAE85FF47AA81FF156D4BE2022217530000000000000000000000000000
          000000000000000000000000000000020107000D082100010003000000000000
          000000000000000000000000000000000000000000000000000000000000000A
          06190B573BBF3FAA7EFF52B88DFF4FB288FF4FB288FF4FB288FF4FB288FF4FB2
          88FF4FB288FF4FB288FF44A77DFF166E4DE201160E3700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000A061905452EA343AD82FF56BD92FF53B68CFF53B68CFF53B68CFF53B6
          8CFF53B68CFF53B68CFF54B78EFF4EB288FF074E34B40004020A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000A06190D593CC046B185FF5ABF94FF57B98FFF57B98FFF57B9
          8FFF57B98FFF57BA90FF59C195FF31996FFF022A1B6600000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000A071A05462FA54AB488FF5DC498FF5ABD92FF5ABD
          92FF5BBF94FF5EC699FF298A64EF03301F730000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000A071A0F5C3FC34CB78BFF60C69AFF5EC1
          96FF60C99CFF3AA377FF033221770004030C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000B071B074830A750BB8EFF67D3
          A4FF30926AF00334227C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000B071B105E41C4309A
          70FF0435237E0005030E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000020107000A
          071A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFC1FFFFFF00FFFFFF00
          7FFFFC003FFFFC001FFFF0000FFFF00007FFC00003FFC00001FF000000FF0000
          007F0000003F8008001FC03C000FE03E0007F0FF0003F8FF8001FFFFC000FFFF
          E000FFFFF003FFFFF803FFFFFC0FFFFFFE0FFFFFFF3FFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010001
          0508000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000001050800000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000815445C1029
          84B2050C27350000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050C2735102984B209174962000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002060909174A640E32BEFF0428
          BEFF1031A7E108133D5200000000000000000000000000000000000000000000
          0000000000000000000008133D521031A7E10428BEFF0E32BEFF0A194E690102
          070A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000009174A641032AFEB0429BFFF0228
          BFFF062BBFFF1131A7E1050C2735000000000000000000000000000000000000
          000000000000050C27351131A7E1062BBFFF0228BFFF0429BFFF1031B0EC0918
          4C66000000000000000000000000000000000000000000000000000000000000
          000000000000000000000002060909174A640F35BFFF052CC1FF042BC1FF042B
          C1FF042BC1FF052CC1FF1132A8E108133D520000000000000000000000000000
          000008133D521132A7E1052CC1FF042BC1FF042BC1FF042BC1FF052CC1FF0F35
          BFFF09184B650002060900000000000000000000000000000000000000000000
          0000000000000000000009184A641134B0EB0630C2FF052FC2FF052FC2FF052F
          C2FF052FC2FF052FC2FF0831C2FF1232A8E1050C27350000000000000000050C
          27351232A8E10831C2FF052FC2FF052FC2FF052FC2FF052FC2FF052FC2FF062F
          C2FF1134B0EB09184A6400000000000000000000000000000000000000000000
          0000000000010816445C1139C1FF0933C4FF0833C4FF0833C4FF0833C4FF0833
          C4FF0833C4FF0833C4FF0833C4FF0933C4FF1233A9E108133D5208133D521233
          A9E10933C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833
          C4FF0933C4FF1239C1FF0916435B000000010000000000000000000000000000
          00000102070A102B87B40B38CAFF0937CAFF0937C6FF0937C6FF0937C6FF0937
          C6FF0937C6FF0937C6FF0937C6FF0937C6FF0C38C5FF1334A9E11334A9E10C38
          C5FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937
          C6FF0937CAFF0B39CBFF112B85B3000206090000000000000000000000000000
          000000000000050E2C3B1339B5E40E42DDFF0B3DCDFF0B3CC8FF0B3CC8FF0B3C
          C8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0C3CC8FF0C3CC8FF0B3C
          C8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3D
          CDFF0E42DDFF1338B4E3050D2A39000000000000000000000000000000000000
          00000000000000000000081541571339B6E40F46E0FF0D41D0FF0D40CBFF0D40
          CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40
          CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D41D0FF0F47
          E0FF1439B4E30814405600000000000000000000000000000000000000000000
          0000000000000000000000000000050E2C3B153CB7E4124BE2FF1047D2FF1045
          CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045
          CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1047D3FF134BE2FF153B
          B5E3050D2A390000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000008154157153DB8E41451E5FF124B
          D5FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124A
          D0FF124AD0FF124AD0FF124AD0FF124AD0FF124CD5FF1451E6FF153CB6E30814
          4056000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000050E2C3B163FB9E41756
          E7FF1551D7FF144FD2FF144FD2FF144FD2FF144FD2FF144FD2FF144FD2FF144F
          D2FF144FD2FF144FD2FF144FD2FF1551D8FF1755E7FF163EB7E3050D2A390000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000081541571740
          B8E41858E0FF1654D6FF1654D5FF1654D5FF1654D5FF1654D5FF1654D5FF1654
          D5FF1654D5FF1654D5FF1654D6FF1857E0FF173FB6E308154056000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000008133D52163C
          AEE11958D6FF195AD7FF195AD7FF195AD7FF195AD7FF195AD7FF195AD7FF195A
          D7FF195AD7FF195AD7FF195AD7FF1958D6FF163CADE008133B50000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000050C2735163EAEE11B59
          D6FF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5E
          DAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B59D6FF163DADE0050C26340000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000008143D52173FAEE11D62DAFF1D64
          DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64
          DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D61DAFF173FADE00813
          3B50000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050C27351740AEE11E62DAFF1F68DFFF1F68
          DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68
          DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1E62DAFF173F
          AEE0050C26340000000000000000000000000000000000000000000000000000
          0000000000000000000008143D521841AFE1216BDFFF226EE1FF226EE1FF226E
          E1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE2FF226EE3FF226EE3FF226E
          E2FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF216B
          DFFF1840AFE008133B5000000000000000000000000000000000000000000000
          000000000000050C27351942B0E1226ADEFF2472E4FF2472E4FF2472E4FF2472
          E4FF2472E4FF2472E4FF2472E4FF2472E4FF2575EAFF277BF3FF277BF3FF2575
          EAFF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472
          E4FF2269DEFF1841AFE0050C2634000000000000000000000000000000000000
          000000010507112C85B12573E7FF2779EAFF2677E6FF2677E6FF2677E6FF2677
          E6FF2677E6FF2677E6FF2677E6FF277AECFF287BF4FF1B49B7E21B49B7E2287B
          F4FF277AECFF2677E6FF2677E6FF2677E6FF2677E6FF2677E6FF2677E6FF2677
          E6FF2778E9FF2574E7FF122D86B2000105080000000000000000000000000000
          0000000000010916445C215FDAFF2A84F7FF287CEBFF277BE8FF277BE8FF277B
          E8FF277BE8FF277BE8FF287EEEFF2B86F9FF1B4AB7E208143E5308143E531B4A
          B7E22B86F9FF287EEEFF277BE8FF277BE8FF277BE8FF277BE8FF277BE8FF287C
          EAFF2A84F8FF2363DDFF0A1A4F6A000001020000000000000000000000000000
          000000000000000000000A184A641F52C2EB2D88F7FF2B83EFFF2A80EAFF2A80
          EAFF2A80EAFF2B83F0FF2C84F5FF1C4BB7E2050D29370000000000000000050D
          29371C4BB7E22C84F5FF2B83F0FF2A80EAFF2A80EAFF2A80EAFF2B82EEFF2D89
          F9FF205AC9EE0B1C567300000000000000000000000000000000000000000000
          00000000000000000000000206090A184B652465DBFF2E8CF8FF2C85EEFF2B83
          EBFF2D87F1FF2F8EFAFF1D4CB7E208153E530000000000000000000000000000
          000008153E531D4CB7E22F8EFAFF2D87F1FF2B83EBFF2C84EDFF2F8DF9FF266B
          DFFF0B1C56730102080C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A184C662056C3EC3090F8FF308E
          F5FF2F8BF5FF1D4DB7E2050D2937000000000000000000000000000000000000
          000000000000050D29371D4DB7E22F8BF5FF2F8DF5FF3190F9FF225CC9EE0B1C
          5673000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000206090A184C67266ADBFF349B
          F8FF1E4DB7E208153E5300000000000000000000000000000000000000000000
          0000000000000000000008153E531E4DB7E2359DF9FF2870DFFF0B1C56730102
          080C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000917465F132F
          87B2050D29370000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050D2937133089B40A1A4F6A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010001
          0508000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000102070A00000102000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFF3FFCFFFF1FF8FFFC0FF03FFC07E03FF003C00FF001
          800FC0000003C0000003E0000007F000000FF800001FFC00003FFE00007FFF00
          00FFFF0000FFFE00007FFC00003FF800001FF000000FE0000007C0000003C000
          0003F001800FF003C00FFC07E03FFC0FF03FFF1FF8FFFF3FFCFFFFFFFFFFFFFF
          FFFF}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000805020E241C0A3D29200B442B20
          0B442A1F0B452A210B4529200B43100C041B0000000000000000000000000000
          0000120E071D29200B432A210B452B200B4429200B4429200B44241C0A3D0805
          020E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101000147331277947125F19A7326F59A75
          26F5977727F6977727F69A7326F5675019A80604010A00000000000000000604
          010A66511CA99A7325F5977727F6977727F69A7326F59A7326F5947125F14733
          1276010100010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000202000362471AA3A37D2CFFA37D2CFFA37D
          2CFFA37D2CFFA37D2CFFA37D2CFF846521D10D0A031500000000000000000D0A
          0315846521D1A37D2CFFA37D2CFFA37D2CFFA37D2CFFA37D2CFFA37D2CFF6247
          1AA3020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003674D17A4A6812EFFA6812EFFA681
          2EFFA6812EFFA6812EFFA6812EFF866826D20D0A031500000000000000000D0A
          0315866826D2A6812EFFA6812EFFA6812EFFA6812EFFA6812EFFA6812EFF674D
          17A4020200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020200036A4D19A4A88330FFA88330FFA883
          30FFA88330FFA88330FFA88330FF886C27D20D0A031500000000000000000D0A
          0315886C27D2A88330FFA88330FFA88330FFA88330FFA88330FFA88330FF6A4D
          19A4020200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020200036E4F1BA4AB8533FFAB8533FFAB85
          33FFAB8533FFAB8533FFAB8533FF8D6D2AD20D0A031500000000000000000D0A
          03158D6D2AD2AB8533FFAB8533FFAB8533FFAB8533FFAB8533FFAB8533FF6E4F
          1BA4020200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020200036E511EA4AD8735FFAD8735FFAD87
          35FFAD8735FFAD8735FFAD8735FF8B6D2AD20F0A041500000000000000000F0A
          04158B6D2AD2AD8735FFAD8735FFAD8735FFAD8735FFAD8735FFAD8735FF6E51
          1EA4020200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000202000370531FA4B08A37FFB08A37FFB08A
          37FFB08A37FFB08A37FFB08A37FF8F6F2BD20F0B041500000000000000000F0B
          04158F6F2BD2B08A37FFB08A37FFB08A37FFB08A37FFB08A37FFB08A37FF7053
          1FA4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003735522A4B28C3AFFB28C3AFFB28C
          3AFFB28C3AFFB28C3AFFB28C3AFF927230D20F0B041500000000000000000F0B
          0415927230D2B28C3AFFB28C3AFFB28C3AFFB28C3AFFB28C3AFFB28C3AFF7355
          22A4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003745722A4B58E3CFFB58E3CFFB58E
          3CFFB58E3CFFB58E3CFFB58E3CFF927530D20F0B041500000000000000000F0B
          0415927530D2B58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFF7457
          22A4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003735925A4B7903EFFB7903EFFB790
          3EFFB7903EFFB7903EFFB7903EFF967533D20F0B041500000000000000000F0B
          0415967533D2B7903EFFB7903EFFB7903EFFB7903EFFB7903EFFB7903EFF7359
          25A4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003725A26A4BA9341FFBA9341FFBA93
          41FFBA9341FFBA9341FFBA9341FF977634D20F0B051500000000000000000F0B
          0515977634D2BA9341FFBA9341FFBA9341FFBA9341FFBA9341FFBA9341FF725A
          26A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003705C29A4BD9543FFBD9543FFBD95
          43FFBD9543FFBD9543FFBD9543FF997A35D20F0C051500000000000000000F0C
          0515997A35D2BD9543FFBD9543FFBD9543FFBD9543FFBD9543FFBD9543FF705C
          29A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003725E29A4BF9745FFBF9745FFBF97
          45FFBF9745FFBF9745FFBF9745FF9B7A39D20F0C051500000000000000000F0C
          05159B7A39D2BF9745FFBF9745FFBF9745FFBF9745FFBF9745FFBF9745FF725E
          29A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003755E2DA4C29948FFC29948FFC299
          48FFC29948FFC29948FFC29948FF9D7B3AD20F0C051500000000000000000F0C
          05159D7B3AD2C29948FFC29948FFC29948FFC29948FFC29948FFC29948FF755E
          2DA4030200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000302000375622DA4C59B4AFFC59B4AFFC59B
          4AFFC59B4AFFC59B4AFFC59B4AFFA07F3DD2100C05150000000000000000100C
          0515A07F3DD2C59B4AFFC59B4AFFC59B4AFFC59B4AFFC59B4AFFC59B4AFF7562
          2DA4030200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000302000379622FA4C89E4DFFC89E4DFFC89E
          4DFFC89E4DFFC89E4DFFC89E4DFFA2803ED2100C06150000000000000000100C
          0615A2803ED2C89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFF7962
          2FA4030200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030200037B6531A4CAA04FFFCAA04FFFCAA0
          4FFFCAA04FFFCAA04FFFCAA04FFFA4843FD2100C06150000000000000000100C
          0615A4843FD2CAA04FFFCAA04FFFCAA04FFFCAA04FFFCAA04FFFCAA04FFF7B65
          31A4030200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030200037D6534A4CDA251FFCDA251FFCDA2
          51FFCDA251FFCDA251FFCDA251FFA88441D2100D06150000000000000000100D
          0615A88441D2CDA251FFCDA251FFCDA251FFCDA251FFCDA251FFCDA251FF7D65
          34A4030200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030200037D6934A4D0A454FFD0A454FFD0A4
          54FFD0A454FFD0A454FFD0A454FFA98444D2100D06150000000000000000100D
          0615A98444D2D0A454FFD0A454FFD0A454FFD0A454FFD0A454FFD0A454FF7D69
          34A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003806938A4D2A756FFD2A756FFD2A7
          56FFD2A756FFD2A756FFD2A756FFAB8846D2110D06150000000000000000110D
          0615AB8846D2D2A756FFD2A756FFD2A756FFD2A756FFD2A756FFD2A756FF8069
          38A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003836C38A4D5A958FFD5A958FFD5A9
          58FFD5A958FFD5A958FFD5A958FFAD8947D2110D06150000000000000000110D
          0615AD8947D2D5A958FFD5A958FFD5A958FFD5A958FFD5A958FFD5A958FF836C
          38A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003836E3AA4D7AB5BFFD7AB5BFFD7AB
          5BFFD7AB5BFFD7AB5BFFD7AB5BFFAE8D49D2110D07150000000000000000110D
          0715AE8D49D2D7AB5BFFD7AB5BFFD7AB5BFFD7AB5BFFD7AB5BFFD7AB5BFF836E
          3AA4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003876C40A3D9AC5CFFD9AB5AFFD9AB
          5AFFD9AB5AFFD9AB5AFFD9AB5AFFB28E4ED1110D07150000000000000000110D
          0715B28E4ED1D9AB5AFFD9AB5AFFD9AB5AFFD9AB5AFFD9AB5AFFD9AC5CFF876C
          40A3030200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101000162513372D4B16DEDD6B26AF2D6B2
          6AF2D6B26AF2D6B26AF2D7B46DF0917647A20806030A00000000000000000806
          030A917647A2D7B46DF0D6B26AF2D6B26AF2D6B26AF2D6B26AF2D4B16DED6251
          3372010100010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000906040C2F261835362E1C3D362E
          1C3D362E1C3D362E1C3D332B1B3A120F08160000000000000000000000000000
          0000120F0816332B1B3A362E1C3D362E1C3D362E1C3D362E1C3D2F2618350906
          040C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000027744558745469746C6500526566726573683B5265706561743B4261
          72733B526962626F6E3B52656C6F6164CD4DF6E90000091349444154785EC597
          6950545716C72F8B46D151474D3431EEA3A351A3E306384649D4382A91C50430
          C8441425A0B8B3AF028ADA54005101111A9C068128342E40836C02DAB23468AB
          C8DEA06C0DCD4E3774379E39AF7DCFE9E2CBD4D45815AA7E75EF8577CEF99FE5
          5DEA1100F843F9C305FC3F3F1AA31965F0519DAB07D5A4D11A0DF3B7FF498C5F
          5239F1FB1DC1D5176182F82494C4BBC43C4E5473A8793A8C37C723F6F1714F4E
          31CF9B535CE61557A2F4E494283DFEF554E07E93CF73892A3871E437EE5C3531
          1A6EB14F896B0C059FB8B2F9C485FD8438472351D4FA9810DF440191BD7BF701
          CAD09D5DB4FB667E0D44F25E814368A611E5F05060C631BF448132E569033C6B
          EA82FACE01908E8C50E0BE1F7F27813B4FEAC137BE54E918591075D03F6E3623
          6470E41D516780E674642121DEB74A89140F882AFB1F8F058CF7892FA97BD323
          0351F7209C0CCFAFFBBB89DD04330FCE92331179F2AE612534CB95201A5242A5
          4C012FA40AA8C6953AB7C947A003CF778B45E016FD64E06850DA6EF43906D11C
          5062D0519C087B440896F0437044D325BAC8FD415913B463908621052414D4C0
          41569A073A196BE6798715975F0DD518E4F980029E0DC8DFD32F870A9A677D72
          689229E1554B1F78C53E8523C13C4746449FE21D51C7E14A3E21D8235539A8E0
          76812973CF270906C498D1EB410554A0B3C6FE6138793577D0F048C8023D6387
          E9163EC92D5558997A1421A2A9C5672B514879CF309422253D4320EC1B863A89
          143C629E286D0292CD68111A4CF05EC508B10FC92138147C267B6DC7C8C23481
          A80B4428A0B41B9DA1A3E72822FF552B587827A7A383715BEDAE9B183B2580A9
          4B02E81DB80E7ABF448089F32D3817FF044A9B7B5522F89221E077CAA0AC6B08
          044DDD384779BDA6274217D233A14105EF416C7F7B4898E05A0E213CE388F497
          D03A3C02020CCC97C86886A006CBED135304BB8E45995222D6595E76586BC1DA
          3673E9B79328D6FC747EBBAEE5E5886F6D6F0CC7E4544209062F144BA1A05D0A
          CFD00727B71A0E5E78C046DB4F10CD6EF908A1B0B9944954A5DFB4C77E024E6E
          7D0D4EF60B2C5D111AABE89051603652A878DB0D468E09F5B3577C37992EA796
          1ADA94F355465E1B36FC12DE12935D098FD13EB76510725B0740281E84A32139
          CA9DB6AC25F4B31A926125D91F90815B34B60FE279DE2EAA8306EC25A53ABF75
          F03FB4BD4780995CBE530A9B6DC2BDA88164DE7306FA3C76E56E37BD2DB691F2
          426C65F6DB7EC86CEA87A2B601B8765F083F7BDDF6A16D353A8794E478682E21
          56DE715FE1B4CA9A7088F81D52788846D96F07E02192DD8C50677AFFAA4B0666
          2E09F255BBDD56309930E5645A898CD3DF171C791167A2102BF0A0A10F45F441
          AAE02DECF5E66244321ED16C4701478373080E42567AD68B3610E2C094A18032
          318255C868EC43FAA114CF0C6548CA935A586711924165C29492A90023608DE9
          D97F98BB24AAFCA5D6F4A8C8AEEB0273AFD456B4F9935A0B3589B17312ECC6A9
          363C1D0F3B4FC4830D2B13F858FA7B75BD70AFBE57B5C75EC1C65FC241DFEA1A
          E85A5E81B5162130AA0D5AF480E9209326CFF8CB175B6CA3E1392675FB751724
          5576412E2663E6C995A3CDA7C86464225D0D54A3666CE89C325CD93B0C2955DD
          9052DD0D8FB0059480493316CDA4D5EBD0C1B4D432FF64FFB974784F1AEC3F9F
          063F7972A10205DC7A218138A104D26A7BC0D43519ACCF67C081008A743888AB
          7AF9B4119D6D276FB71463E9125F4A20F19504B21A7AA909869DF657B651E545
          B499CC5BA50AC208303CC1E1F1CADF408B5401CD34027C1D632B3A805DDE015C
          AC82105B5887C955E21D139F5F05AB4C5999C4E07014A9EE19661C8DDB6C1FFF
          282CB70E420B5B20AAAC1D92D13084FB0CF638DF8AA004329963008230098C59
          67E2F237CBB35CC5FDEA2E600BC4108DB651A562B851DA0E9125ED10FAB805FC
          788DE079BF01021F36C126EB70C53CBD036BC837D611A4AA7B98713456FF60B4
          8F4358A1CAD83FB31102F3DEC23DA118FEE97B5FBED5FAD2064A242382813E4F
          D8B43FF4A26F7C31702AC410F1B40DC2F8AD1054D0ACF2E3F9A001DC3138B5B7
          F4BF0F8BB7BAB2281BA26B194A2ABB871801DA5F197A2E3770F85D19572E86B3
          3C11F866882028AF19D839B560E69EDC6A60E5BF9132A487509B82DEEB4CF962
          E90C039B1BA2C8A22608C86A5205F5A003BBDDAB070F5CDD6FBF84A53BFC1A75
          A62E98A1B25B63164C5E750D51306D18BFCAEA46ECF1483EB072DE80575A0378
          A78920024B18935B0B963E77E546A739D7BFB709FE010DA6506CB509DA61E8C0
          3E81FBA95FEF72DF67E59B0ABFE5BD010F0CEA86B8DCAD07E7D43AF0C364B6D8
          DE80D9EB6DF731F7015969C22242C910798130FD9C67706CC91A6BCE008B574B
          0547470D2A67D7702EB25E4B201867E2308B8715E182991B170E5DCC80431778
          A06B1E4039FE6CB56960B6EF9DE7D8EFF7819DB8B5E076B70E0E5F2D80B91B9D
          B2E9D7708C2ADE32C300F2BC73089191E712D987615C6CC4B2DC609704E7D21B
          548EDC300B57C40705C59688E1115E54E56219083B65AA8B2BB3AA13BE77E0BC
          F96CA1DEC22F57EDD13338705D7AF1A1089C52EAC0311905706BE0EB1F02A4D3
          161BE9D273A4395BDF999025DBFD494587EC3D288299054467917188BBDEAF49
          E098F012BC1F88C005B371E632D482333AA770C2B33F96D7FB6631E8595EBE8A
          B633177DE776E1606086AAEFAE686778FA16CC5CFD6B00759730D7F8E7EBCF10
          B2ED683C29C7E002A49C464DC484793BCF5B2DB3BC39687E311F3C536BC18B76
          E88241CFA4D4C219CCCE891675ED5133FC702A49B168938DFEC4E9F3672FDDE1
          DF78F65E151C6597C02CDD538D6327CEFA9CBEC4348ADBA464C66A1C9B2D761C
          22104B3F5046A32662FC8CF536CB16985C8B5F6EC551EE0DC88223D1A5702A4E
          08DE28C60BA7FC2447087691A560E6CF834D8762956BCC825CD1EECFB3D6D95A
          ED381603BA7B4360EA929FADA8849857988F023E5DE940C8E6C3379158F2578B
          18B2D81C3163934514E66C32EA9E9FF8E95AEBE5737705BACF330ECF9B6F725D
          38FF4736CCDBC386B9C611C2394661795F6EBFE4316DB5F5723AD03864F21C7D
          A7B4E9CB0FF3703F8919BC692BECC9B41547C8545CFFEB8FFA7F3AE67DA7FB38
          05994A41EF27A9DD0F5A1474401D0A7AAFF931BE961831DAEAA87F8CA833FA6B
          E9A3F1D1BE0B01E00FE5DFFF3B6B594FDCD6290000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000027744558745469746C6500526566726573683B5265706561743B4261
          72733B526962626F6E3B52656C6F6164CD4DF6E90000097049444154785EC557
          696C15D715FEEECC5BEC673FEFF83DE305DB103078613360234CCA521227A449
          504A2AB2476A9AA849A334AAFAAB4A11A289D212A94A5A3552DBB4A4350E2969
          6241EAB44052CC12E305638C17700CDEFDFC166F6F9B3733F7F6DDABEB18891F
          1152AB9ED1A7FBE6FADCB37CE79C190F618CE1FF29E4BFA8CFFE5701908555E2
          76610B90F77712C06F1B6B0176CB2946F0C3FB3E95CEA01C3CBCADC891627B54
          B5901D842095105201C64019EB6494CC1A86796ADA1B3D7AE0074D0300A804DE
          3E7EAF2830D705217215F6E5CAC482774ED462DFF61F831082F4849D5F3B7EBD
          6E7B4D62B275BF2B3DB7C69D9E8F45A98B919A9C094782135C4291594C07FDF0
          CE8CC313188C63EC427036F6F39F3DF5C517004C007462EE38331905632C0E0A
          CA4CF1FBE333BF177128E09A94815FF3CE1F7C6645E2A163DF7EBB30AFE8F4E6
          55BB6ABEB5663756169521353501067CF0877BE10B5D85C6C691EC24585EB014
          5B56DF834DA53BAB8B0B8B3E7BA37EC7DB35F7E7270150DDCEDD0490CEF90A70
          E6844FD3A0B0806F98149989BB44D6CFBDB63E7B7979FAD195856BB7AC282885
          CD4630A78D82C11494890B145464A581D259F19B4B564626D29C55703A329EC3
          93A4B4B024FDD1F70F757A72531E3487A68E89D38C99A010CE6F6B30259EB973
          736DFEC9B5CBABD697149620A20760D098542200E10616029094C661C0A4F135
          0E8B6A4792D58D81919BE8E86B696FACEBBFA7E9F8D03400F346A09EF1EC29A5
          F8DBA93F885EB0DC1280BA6967EE5B2B97AC5EBF2CBF1881F030DF147DC14555
          ACB02A7628C41A872A82D0690C861985A68741A90E931AD04C0DC1E80CF27396
          20122D5BA7ED310EC503781E00EF055304CD61083E40E69DBFFA56755569E9B2
          A6CAD28DD031C3B3E3CE8582DD9A84D1B1002EF75C434FFF0086C7C7C5A9FC1C
          17561417A1ACA408D9D94988C4667910820D421438D4C5E8ECBD82F6D66BDBDE
          7DADED3C00FDDAE461C619FBA0F13000068B0CC0E2CCB41F2C7017C32421C4F4
          8830A0C461B33870AEE50A4E9DBF680C0E4DFC3916A67FBFD91A6A06007F65B8
          AAF7DAD04397BA7B9EDABA718D65754501344383C94C98A60685F890EBCAC770
          CEC80100B5A2DF6198E2EFE6420F589E3F50B9A962CDD2B35BD656635A1BE799
          0B245A92D072F93A3E6EFCDCE3199ADB7BA961AA158021E79C8BCACFAFFB4E46
          654E91F383DAED55AED2558B118E336198862853A6A310ED97BBD1D67CFD5B87
          DFECBC0040BF3CF61B76F478BD6040E14652D26C7B16A56623A407A01BBCAE3A
          1803463D8178F61D867738F448DC790B008D1B00604AE87CAFBD21D0E2B911DA
          DBD2D16B78BD73608C8886D44D1D33510FD2D3D2919695B80780609C07C71930
          4D2636140AB6D1626708C666C0286F1202AB6AC7B5AF863136E67DBFED137F87
          744687673E640BE308B624ED5106406F6DF07564E426FEE5C690F7E98A7237C2
          5417CD1689CD21C99101C54A2A6500CAFAFC97D94FDEA9664C6EA894D265A6A2
          61607200AE943C517707140C8D8E2316A41FCDD37E73AA9EF10683745F94BE4F
          8CAF2C250DFB8D86B171DFD3E5153930A8215830988124ABC1359602B0018871
          FD5FBE788101304544864E33991A45509B46D8378B74870B49F614F80253E86E
          9A6E9335E7DD2B9D034B339E203201DB3C2E9FF47717AFCC14CF0AC330C44484
          F5205882CA6730038053F68D21198D8A9AE8BA0931CB8C89A87DC13158545B1C
          0A783B424ADCA0740FC8CCAD3FFAD5C61946A012F932B3DBECD0CD1866A30144
          F410C018ECAA83D7DBFAE29B1B06B88ED4355B4E8EE5F100108D198170447329
          4C85C174AE200E676765A262EBF4FAD375C3A700189A11617C346510C2D6F8F8
          4CDDEE7BB73DB1A67495A05D33A2E81E3D839016144C08C608C5BE471E90A3C3
          70B9AB0F9FFEE37CFDC57F8D8679004C8B1A03C159DD451C2AA81103445061B8
          5D59485B24BAF72C00BDCCFD02FB72F00D16174831BBCEF90E26249D7D3064FD
          2A25AC074099A48273276BE79B9BC017B31F8A3DBB928C0B4D9EB9EEF3FED7B9
          4DAE93F4F0CB77BD5EBE2EEFA58C3C0DE158105CACAA1599B665E8681B31BA9A
          C7EE3B7DF446338008773A9FBDACA763D7B3852F97552EDA5FB8D281883CCF21
          190095ABDDE240FFD510BA9ABDFB9B8E8CFF1A4050E106BD239186C9893930AA
          7C7D3066C410253E942C2FB0DC5591F5D7BB1F5E520D20853B0460E731CA26A4
          678E8EBC37D017E88B06092C0ADF2692016E4F114F559558A18509FA7BA6062F
          364CFE91930CC020D29073F78BC58DAB372EDA90EAA6E2512C84008BD38AA04F
          A5A2A777D0181DF21F99F2463F3D5937C04B42EF797CE986F8FDCD8B9F8D8E6F
          B8DFB5BDB42AFBC8FA9A6C31FB4264A92818122C89683BE7C5D566DFF3ED277C
          1FF0EC0198728E9158B9DB7577F926D789A5E57610BB26A6410A72338A60375D
          981C0F223EE708046604A5CE640726C6A6DAEBDFEA7A0800763E9BFF6ED5F6FC
          DAAC1C2B0CAA8331EE9A412516F82763686A1C3ADBF4BE672F802900B16DDFCF
          119C337ED37ADCD33C38E03F3A7243830A2B0F9E43C85860103EBD1FD9450477
          6F2FC5E38FD5C6711F6A7757637949E1BA9D8F157F0F00FADB677E71B5C31725
          B08110158A800516C58E2BAD5E73A427BC1F40483E0318A514E49699B667E627
          B857EFCA6C585E9E5A56B0C20ECA0CF9FF24997F3B8ABA0AE3FC5E5190E72CC7
          27C72EF84ED5F7EFF00C856636EF75BF5A5993F7D25D6569E279A02A2AAE774F
          A1F9F3E13FB51CF3FF1400A72FB6F5D96CC6A463EC7C2E97F24DFF70D4DB7B6E
          6A5F7747A0ED7A6708B1B00A8B6A954E45B56420840720EEFDDA102A2B5765AD
          D9E67E0500B9D4E8FB5DF7158F4FD74443428F2AE8EA98F05FFF72EE1080B0CC
          5E4C068B430580256B9371B33D28F6E77C7AD03F143DA12693826884AD042370
          A63860B558212855D479364476A0408EDB8D91517F6924A47DE4B919F2A6BA6D
          21D5A6EEC85B928ED6E6110C74050E0C5D0A9F91F4D3D3FDAFB1D3672E4AEA65
          34FFEC7B85C9198F0603C6E48523932FF434FB9F6C3D3779A5F9DF13E8EB9C86
          774C831656602109B02021AEA8607C3488D34D5F62363A6B4D5B8AEFF2F3974E
          F8EAAE5FF5744EFB35F4754F747635CED4C9EC4DC80165F2220050F34C36A4A0
          E9BD49C1B59CF10400C9451B92CBD273AD0FD81CEA6610E654AD6419B8359DF5
          338AA016A6E76726621FDF680EB5CBF9B6966C4DDBB2AC34FBA3DE2BA37BFACF
          869A64F666F55319EC9B3FCD16F65509DB2DB0C83D2E1480215FB19A84C9CFC8
          E0ADB2E611A9C76E737407DF85CA026EFB2EA40B90B2A04B25D89D7D9CDEB92E
          BB5DFF9BBF9CFF03BCBD0FCE21DB47940000000049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020202030702020308020205080101
          0104000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000303060E0D0D1F3A18183F750F0F50990C0C5DB206065CB70A0A5DB70C0C
          54A10A0A3D780808244701010C17000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000008120303
          2E5A08085CB7080877EC060680FD050580FF070780FF070780FF070780FF0707
          80FF08087EFE090979F4080865CC05053E7C0101152A00000104000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000003050202234507075DB90909
          7AF6090981FF090981FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A80FD06066FDE02023E7C00000C170000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000070D04043A77080873E80A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A7DFA07075BB80101
          1530000001010000000000000000000000000000000000000000000000000000
          00000000000000000000000007100404468F0A0A7AF60A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A7FFE0909
          61D00101193B0000010100000000000000000000000000000000000000000000
          00000000000000000409050542860A0A7BF80A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A80FF0A0A82FF0A0A82FF0A0A83FF0B0B83FF0B0B83FF0B0B83FF0B0B
          83FF0B0B83FF0B0B83FF0A0A82FF0A0A82FF0A0A82FF0A0A81FF0A0A81FF0A0A
          81FF090960CF0101162E00000000000000000000000000000000000000000000
          0000000000020303305E080879F10A0A81FF0A0A81FF0A0A81FF0A0A82FF0808
          82FF050581FF040482FF070783FF0A0A84FF0B0B86FF0B0B86FF0B0B86FF0B0B
          86FF090985FF050584FF040482FF060683FF0A0A83FF0B0B83FF0A0A82FF0A0A
          80FF0A0A7FFE070759B400000A15000000000000000000000000000000000000
          00000101122607076CD50A0A81FF0A0A81FF0A0A82FF0B0B83FF060681FF0000
          80FF282893FF3D3D9EFF020285FF020284FF0B0B87FF0C0C89FF0C0C89FF0909
          88FF000082FF16168DFF4545A0FF0E0E89FF000081FF090984FF0B0B85FF0B0B
          84FF0A0A82FF0A0A7DF904043B74000000030000000000000000000000000000
          0104050544870A0A80FD0A0A82FF0B0B83FF0B0B84FF070785FF000080FF4C4C
          A3FFFEFEF9FFFFFFFFFF9797C5FF020287FF030387FF0C0C8AFF0A0A8AFF0000
          85FF232394FFDCDCE7FFFFFFFFFFC8C8DEFF17178DFF000084FF0B0B86FF0B0B
          86FF0B0B85FF0B0B83FF09096FD9010111250000000000000000000000000101
          122308086CDA0A0A82FF0B0B84FF0B0B85FF0C0C87FF030384FF333399FFFFFF
          FAFFFFFFFFFFFFFFFFFFFFFFFFFF9393C5FF030389FF020289FF000088FF2222
          94FFD9D9E7FFFFFFFFFFFFFFFFFFFFFFFFFFC2C2D9FF070789FF0B0B89FF0C0C
          88FF0C0C87FF0B0B86FF0B0B81FC040438760000010100000000000000000303
          30610A0A7DFA0B0B84FF0C0C86FF0C0C88FF0C0C89FF030387FF6060ADFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393C4FF000087FF1C1C94FFD8D8
          E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF8FF171790FF0A0A8BFF0D0D
          8BFF0D0D89FF0C0C88FF0C0C87FF070760C20000061000000000000003050606
          52A20B0B85FF0C0C87FF0C0C88FF0D0D8AFF0D0D8BFF07078AFF12128FFFC7C7
          DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9AC6FFD0D0E2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7ABAFF00008AFF0C0C8DFF0E0E
          8DFF0D0D8CFF0D0D8AFF0C0C89FF0B0B7BEB02021A320000000000000A130909
          68CC0C0C87FF0C0C89FF0D0D8AFF0D0D8CFF0E0E8EFF0C0C8EFF01018CFF1515
          92FFC4C4DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7AB9FF00008CFF08088FFF0F0F91FF0E0E
          8FFF0E0E8EFF0D0D8DFF0D0D8BFF0C0C87FB04042F5A00000000010112230A0A
          75E10C0C89FF0D0D8BFF0D0D8DFF0E0E8EFF0E0E90FF0F0F91FF0D0D92FF0202
          8EFF161694FFC3C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7979BAFF01018FFF080893FF101094FF0F0F93FF0F0F
          92FF0F0F90FF0E0E8FFF0E0E8DFF0D0D8BFF05053C7B000000000101182E0B0B
          7DEA0D0D8BFF0D0D8DFF0E0E8FFF0F0F90FF0F0F92FF101094FF101095FF0E0E
          97FF010192FF0A0A91FFC3C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF7373B7FF000090FF080896FF111198FF111197FF101096FF1010
          94FF0F0F92FF0F0F91FF0E0E8FFF0E0E8DFF0707448C0000010101011A301212
          84EB0D0D8CFF0E0E8EFF0F0F90FF0F0F92FF101094FF101096FF111197FF0E0E
          98FF000094FF191996FFD3D3E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF8A8AC1FF000092FF080898FF11119BFF111199FF111198FF1010
          96FF101095FF0F0F93FF0E0E90FF111191FF0A0A468E00000101010115271919
          87E510108FFF0F0F90FF0F0F92FF101094FF101096FF111198FF0E0E9AFF0202
          96FF24249CFFD8D8E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9393C5FF060695FF09099BFF11119CFF11119AFF1111
          98FF101097FF101095FF0D0D92FF1C1C9AFF0A0A47830000000000000D181A1A
          80D5161695FF0D0D91FF101094FF101096FF111198FF0F0F9AFF030396FF2525
          9CFFD8D8E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9494C5FF070796FF09099CFF12129CFF1212
          9BFF111199FF101097FF0D0D93FF2727A2FD0606386600000000000005091717
          74B322229FFF0D0D90FF101096FF111198FF11119AFF0B0B9AFF1E1E9AFFDDDD
          E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7DBAFFBCBCD7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393C3FF060698FF10109EFF1212
          9CFF12129AFF101097FF111197FF2E2EA1F20101244000000000000000010B0B
          4D793535ADFD0C0C91FF101096FF111199FF12129CFF09099BFF6363B2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7878BBFF00009BFF13139FFFC3C3
          DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FF1B1B9EFF0F0FA0FF1212
          9EFF12129CFF0E0E98FF2020A3FF292990D401010F1A00000000000000000202
          20363535A3EA1A1A9DFF0E0E97FF12129BFF12129DFF0A0A9DFF2B2B9EFFF0F0
          EFFFFFFFFFFFFFFFFFFFFFFFFFFF7979BCFF0505A0FF0D0DAAFF0808A8FF1919
          A1FFC4C4DBFFFFFFFFFFFFFFFFFFFFFFFFFFACACCEFF09099CFF1111A2FF1212
          A0FF11119EFF0D0D98FF3A3AB3FE13135E930000010400000000000000000000
          060A1B1B6CA93F3FB6FF0B0B95FF11119BFF12129FFF0F0FA1FF03039DFF3A3A
          A3FFEAEAEBFFFFFFFCFF7D7DBCFF0505A2FF0F0FACFF1515AEFF1414AEFF0909
          ABFF1A1AA2FFC4C4D9FFFFFFFFFFB0B0D0FF10109DFF0A0AA4FF1212A4FF1313
          A1FF0E0E9CFF1E1EA5FF3F3FAEEB0202233D0000000000000000000000000000
          0000030326424343AFEB2626A9FF0D0D99FF1111A0FF1313A2FF1111A3FF0505
          A2FF1B1BA1FF2A2AA5FF0808A4FF0F0FADFF1717B0FF1717B1FF1717B1FF1515
          B1FF0B0BACFF1111A4FF2F2FA7FF0D0DA3FF0B0BA7FF1313A7FF1414A5FF1010
          A2FF0F0F9FFF4B4BBFFE17176A9C000004090000000000000000000000000000
          00000000030712125A8B5555C5FB1818A3FF0D0D9EFF1212A2FF1414A6FF1414
          A8FF1111AAFF1212ADFF1515AFFF1717B2FF1818B2FF1818B3FF1818B4FF1818
          B3FF1717B2FF1414B1FF1313AFFF1313ADFF1414ABFF1515A9FF1212A4FF0E0E
          A1FF4141BDFF3939A2D702021C2C000000000000000000000000000000000000
          00000000000000000F1A25257FB75959CAFE1717A4FF0D0DA0FF1313A6FF1515
          A9FF1616ACFF1616AEFF1717B0FF1818B2FF1818B4FF1919B6FF1919B6FF1919
          B6FF1818B5FF1818B3FF1717B1FF1717AFFF1616ACFF1212A8FF0E0EA3FF3C3C
          BEFF4F4FBBEC0808385700000002000000000000000000000000000000000000
          000000000000000000000101182A2C2C8DC46161D0FE2121AEFF0D0DA3FF1212
          A8FF1616ADFF1717AFFF1717B2FF1818B4FF1919B6FF1919B8FF1A1AB9FF1919
          B8FF1919B7FF1818B5FF1818B2FF1616AFFF1111ABFF1111A9FF4848C7FF5757
          C2EE0C0C476C0000040600000000000000000000000000000000000000000000
          000000000000000000000000000000001829232380B46767D5FA4343C4FF1313
          AAFF0E0EA8FF1313AEFF1717B3FF1919B5FF1919B8FF1A1ABAFF1A1ABCFF1A1A
          BAFF1818B8FF1717B5FF1212B1FF0E0EADFF2727B7FF6262D7FF4A4AB7E40A0A
          4365000003070000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000D18111159855252BBE76E6E
          DAFE4545C7FF1D1DB4FF0F0FAEFF0F0FB1FF1010B4FF1212B8FF1313BAFF1010
          B7FF0E0EB4FF1616B5FF3030C2FF6060D8FF6868D6F82A2A8DBC04042B400000
          0104000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000004060202243A1818
          709E4F4FBAE47373DEFC7070E1FF5D5DD9FF4E4ED2FF4747D0FF4A4AD2FF5757
          D7FF6969E0FF7676E2FE6363D1F3343496C50A0A436800000C15000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          050700001C2C080849691E1E79A437379FC84646B2D94C4CBBDF4A4AB8DD3E3E
          A9D22A2A8AB713135D8704042E4700000C140000010100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000030501010B100101131B010116200101141F0000
          0F16000006090000010100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000101010F09090978151515E8111111C40202022300000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000A0A0A851B1B1BF2242424FF232323FF111111B60303032A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000707
          075F202020FF282828FF303030FF303030FF262626FF151515D00303032A0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000B0B
          0B972B2B2BFF2D2D2DFF4A4A4AFF515151FF3A3A3AFF2A2A2AFF111111B60303
          032A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          0439262626E83F3F3FFF484848FF5C5C5CFF5A5A5AFF444444FF2D2D2DFF1717
          17D00303032A0000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000080808642E2E2EE8484848FF505050FF616161FF5D5D5DFF424242FF3030
          30FF131313B60303032A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000305050549313131E84C4C4CFF545454FF636363FF606060FF4A4A
          4AFF343434FF1A1A1AD00605032E110D01282F2404684C3B06A7664F09DE7057
          0AF470570AF4664F09DE4C3B06A72F240468110D012702010005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000309090966343434E8545454FF575757FF676767FF6262
          62FF444444FF393834FF40340DD1614B09D2795E0DFF7A5F0DFF7B600EFF7B60
          0EFF7B600EFF7B600EFF7A5F0DFF795E0DFF614B09D1392C047D0504000D0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000305050549373737E8565656FF585858FF6161
          61FF5C543CFF6F5812FF7D620EFF816410FF826510FF866810FF8A6C11FF8D6E
          11FF8D6E11FF8A6C11FF866810FF826510FF816410FF7D620EFF664F09DC231B
          034D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000003090909663A3A3AE85A5A5AFF5752
          3FFF745D13FF82650FFF856810FF8A6B11FF967512FF957311FF8D6D0EFF886A
          0DFF886A0DFF8D6D0EFF957311FF967512FF8A6C11FF856710FF82650FFF6A53
          0AE21A1402390000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000305050549484130EA7A62
          19FF896B11FF8B6D12FF957413FF937211FF6B520AD2493907992F250462241C
          044A241C044A2F250462493907996B520AD2937211FF957413FF8B6D12FF896B
          11FF69520ADE1A14023A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003483809B6886A
          11FF907113FF997815FF8D6F10FF5B4708B92A200452221A0341211A0440211A
          0440211A0440211A0440221A03412A2004525B4708B98D6F10FF997815FF9071
          13FF886A11FF4737069800000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001812023585680FFF9575
          15FF9C7B16FF927211FF513E07A1261D0445241C0440241C0440241C0440241C
          0440241C0440241C0440241C0440241C0440261D0445513E07A1927211FF9C7B
          16FF957515FF85680EFF17120133000000000000000000000000000000000000
          0000000000000000000000000000000000000101000344340595977615FF9C7B
          17FF9E7C15FF69520ACC291F0447261D0440261D0440261D0440261D0440261D
          0440261D0440261D0440261D0440261D0440261D0440291F044769520ACC9E7C
          15FF9C7B17FF967615FF44340595010100030000000000000000000000000000
          000000000000000000000000000000000000100D012569520BCFA18018FFA684
          19FF886B10F54535067B281F0440281F0440281F04402A2206422D250A452F26
          0B472F260B472D250A452A220642281F0440281F0440281F04404535067B886B
          10F5A68419FFA18018FF69520BCF100D01250000000000000000000000000000
          0000000000000000000000000000000000001B15023D806410E7A78519FFAA88
          1AFF72590BD8362A05592A2104402B210540362D114B40371D54433B2157453D
          2358453D2358433B21573F371C53362D114B2B2105402A210440362A05597259
          0BD8AA881AFFA78519FF806410E71B15023D0000000000000000000000000000
          000000000000000000000000000000000000241C0350967614FAAF8B1BFFAF8B
          1BFF69510AC73025044733290B464940255A524A3162524A3162524A3162524A
          3162524A3162524A3162534B3263524A31624940255A33290B46302504476951
          0AC7AF8B1BFFAF8B1BFF967614FA241C03500000000000000000000000000000
          000000000000000000000000000000000000251D03539D7C16FDB5911CFFB490
          1CFF6A5109C2302504424E45275D5D553B6A5E563C6B5E563C6B5E563C6B5E56
          3C6B5E563C6B5E563C6B5E563C6B5E563C6B5E563C6B4E45275D302504426A52
          09C2B4901CFFB5911CFF9D7C16FD251D03530000000000000000000000000000
          000000000000000000000000000000000000211A024A977714F4BF981FFFBC96
          1EFF71580BCD413611566A634A756A634A756A634A756A634A756A634A756A63
          4A756A634A756A634A756A634A756A634A756A634A756A634A75413611567158
          0BCDBC961EFFBF981FFF977714F4211A024A0000000000000000000000000000
          00000000000000000000000000000000000019130238856911E2C69E21FFC29B
          20FF80640FDD594C2572746D547D756E557E766E557E766E557E756E557E766E
          557E766E557E766E557E756E557E766E557E756E557E766E557E594C25728064
          0FDDC29B20FFC69E21FF856911E2191302380000000000000000000000000000
          00000000000000000000000000000000000009070015624C0ABFCEA522FFCAA2
          22FFAA8719FF715F26A3827A6288827A62888179618781796187817961878179
          6187827A6288817961878179618781796187827A628881796187715F26A3AA87
          19FFCAA222FFCEA522FF624C0ABF090700150000000000000000000000000000
          00000000000000000000000000000000000000000001382C047BC69E20FFD4AA
          24FFC39C20FF896C14E782795D8E89826B8E89826B8E89826B8E89826B8E8982
          6B8E89826B8E89826B8E89826B8E89826B8E89826B8E82795D8E896C14E7C39C
          20FFD4AA24FFC69E20FF382C047B000000010000000000000000000000000000
          0000000000000000000000000000000000000000000008060013886B10E5DCB1
          25FFD6AB25FFC49C1FFF927B34E9948A6CA5938C7596938C7596938C7596938C
          7596938C7596938C7696938C7596938C7596948B6EA5927C34E9C49C1FFFD6AB
          25FFDCB125FF886B10E508060013000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003E300680C49C
          1EFFE5B727FFDAAF25FFBC971FFF988033EB8B8160A098927B9C99927C9C9992
          7C9C99927C9C99927C9C98927B9C8B8160A0988033EBBC971FFFDAAF25FFE5B7
          27FFC49C1EFF3E30068000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000090700154D3C
          06A2DAB024FFEBBE29FFE0B327FFD3A924FFAB881AFF937D2FE0988955C79C8F
          67C39C8F67C3988955C7937D2FE0AB881AFFD3A924FFE0B327FFEBBE29FFDAB0
          24FF4D3C06A20907001500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000C09
          011B6A530CC3D3B023FFF2C52CFFE6B929FFE0B427FFD5AA24FFC8A021FFC19A
          1FFFC19A1FFFC8A021FFD5AA24FFE0B427FFE6B929FFF2C52CFFD3B023FF6B54
          0CC40C09011B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000090700154132058DA18A19E5E3C229FFF1CB2DFFEFC42BFFEDBE2AFFEABB
          29FFEABB29FFEDBE2AFFEFC42BFFF1CB2DFFE3C229FFA18A19E54132058D0907
          0015000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000020200062019024657470AA4AA931AFFCDB524FFEAD22DFFF3DD
          30FFF3DD30FFEAD22DFFCDB524FFAA931AFF57470AA420190246020200060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000007060011241C034F3D2F05874737
          069D4737069D3D2F0587241C034F070600110000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000083C494441545847A59709
          5055D719C7696D16A335696A9CA4CBB469A7994C676A93CCB436A69349ADA442
          C724A2661A930E412448D89700420A440D112B82104040D9028A80EC5A091451
          40165934189607BC0D1EEF010F1EEB6313FFFDBE73DF9357A256D333F37BE72E
          E77EFFFF39E79E73BF677597F21D62454651CBC5AC92EB6032CD145F23A4FA8B
          E2D6250A5B915144705DD822482F68C1C9DCC64B14EB11E2BB1CF87E0B1B7888
          03FEBFE544DE5550AC55C40A0E7CBF85DD3E927AB6190B0B8B30CEDE84716601
          D38454CF0BA68C129382394C4E33F398989A131867E771FC541D1B58437C8F03
          DF6F61038F269D69C4ECDCE26DA1291299201133E3CCD42C3187B1C959818199
          6066C433B119356CE009E2810DAC8CCBACC30CF542884CB208610A2E09514D8C
          1223E3C49884DE60C4F098518C42E4892A36F003E2810CF07CAD8A4AAB16433D
          4AC199110A2A040424C242268646A70583CCC814310D033DF3597C051BF821F1
          1007BEDFC206561F4EBC28E655888C3226110A6E46A79F826E7812DAE1290C08
          26313034090DA1374C232CFA3C1B584BB0017EB9EF59B801C3C3B5E6E0E7E562
          5E974424588405048393E81F9C90D04DA04F370EB556820D064514B381A78947
          4D71797ABF61842FF00D6EC04E1F23D685449E17C3CEC135441F43027D246416
          516BC7A0A25A39C08C09141AC6200CFA1EC86703BF24781ABE4FAC2458E3B611
          FE597120E6CCB329B90D79A905CD039E1FC7C237340EFE878A68C8A78480CA24
          A0A2E04A0ACE2272A6DF606214BD7D06F4AA0DE8518FA2A76F146A32EBF6F119
          780645C325300A719935DAE8948A2207F7D05F93268F88D81B561C8ECB5D9F5D
          7A7D4C4E0F4DD3D2F9C0FF2852CEB5C367FF5931B742808353DD4B6D7A4D022C
          D4AD1E21462153514DC89423E812E8A120C3CE0199482C68C56ECF084CD26A92
          29877132AF61DCC5FFC846D2E61DD2EAE1E359B5853D2A3D2D9B59DCBA750BEF
          7B8623E16C135CC93D0FBF102021B30807971841A782D1A353AE4707216A3AEF
          900F0BB38EBE1988CDAEC3AEBD61989FBF89615A215DBD43088F3B7781B4794A
          AC56C667D68EAB070CE8D31AC800F08E7328624E5D81CD766FC20B3676DED842
          F516BBFFE62FCC364F131E78FD2D096B813BACDF9488C9BA82EDF6FB44EC5EB5
          1E72EA444442C53469F37B61B5EA587A2D64F221A8681E79046CDEF6C027B1C5
          16942C1DC72C3BB7BC1EB3BC9DF9B8049BDFDC8BC5C55BE8269DB6CE011CFCFC
          4B7E39D7B181D54768B7BA21D3A297A6E12635B2DDE9067BB708387A46C2D12B
          0A2E01F126E2E01E9C08AFD093448A45BD845B7092D436507AC6D13B0A0E1E91
          F8D35F1DB1707311EDDD3A34B7A9117254EC0FBC3CADD67C965081D6760DBA14
          C398A746FBC28ED1D0B9C266074F81199A8A65E7B6A6635BCBEBE2586A6BCB35
          5DDBB4752F7C838E6096DE81B62E2DEA5A95D827ED0F3F62038F7F125386ABD7
          D5340A3ACCCC2DA0B35B09EB379CF19AAD3336BFE16A9A4B9AD7DB98CF97E6F9
          9BE7EEF8F35637BCBAC509AFD938A0BD4B213E4ECD37FA51DDD80BBF03056CE0
          276CE0897FD08653D3A440CBD7FDE22BC71F1A55FF90706DBDF503BCF4C79D78
          6923F1CA4EBCB871071DEFC08B2F4BBCF0F276137678E10F12BFDD6087F51BB6
          6113097B054440D9372862F2478B7B5F512B8367682E1BF8291B78329086A3B2
          AE07F5D754D08F1BA1E38F09EDF986C91961487CEBBF05526766442C2DC5642E
          53EFCF5775E0C3E0D36CE0676C60ADDFC102FCEB52272E5D958B0F8A92B65733
          0A13773AB7BC2E306FC5A673DE882CDB715D5E2343E1976DB4D965B2819FB381
          A77CF6E7A3A0FC06CAE8662F6DB31DB4C998E95C567F1B2C9F2DA96C4776692B
          F67CF4051BF8051B58E7199687D3E7AFA3886E7EDD3B8C962E1D5A4DB4D08BC9
          E7E66BA2A66B96F7C5F11DDA897BCBEEE7967D85F4C226B14392367FA4AC9E76
          0FC9A18B2DC8B9D086A60E2DAEB469F0AE5B3C7EB72508BF27B8BE17DCE65EED
          38D695AF34226E56492B92731AE1E093C6067EC5069E710DCE4672EE554ABBAF
          A1FA5A1FCA1B15700FC9A479CA82919665F4251D4E340C239938D13084A4FA21
          24D60D22AE5687E0736A0495AA1158A2C247454AF81528E07D5601C73419BDF5
          B3D8E57A1CAEC1E9286F90E362B30AA9F94D88CBAA83BD9730F09C30E012740A
          09A7EB9152D02CC44B6BBA514DCB85970A67C2872B352436887822AE6610B144
          4CB50EE1151AEC23E1806215FC0B499CF0C957C28B0CEC4EEBA215354B439D86
          CA46194AABBB50562F47624E038E51A2FA778F94DB23B06E8F5FFA58646A3592
          68144A6B7B5058D589AC0BD7C879362DA7791C2CEB43F4652DA268248E56E970
          A44A8B7F566A114C3DF72FA29E17AA44CF7DF21542DC334F0E87D42E0C513263
          EF9582B4E2468AD98112EA58DCA97A1C4AAAA491491A276DB10AD6BCBECDDF61
          975BA2FE3DB764BCE79A8CBFB92460DBEE28D035B196434A5588F8B70687988A
          7E84976BB0BFAC9F4495F06548D88784BDF214F0C855C02D470EFB944E5AFF46
          BC651F8D57B70663F38E4F61FD7638AC777E8A4D7661A3BFD9F0CE87A4CDB9A2
          488F1E279E2178637896E0A159EF45ABC340A97840910201D4437F12F2CF97C3
          8F703FDD03A74C199C3264D8932E1373CEC3EE90DA49E25DB03FD9491B8F114E
          D2727B85E3119C093D4FB0068B8B8444A464C4C3A60B9CB3AD26D672423242F3
          3832C64839FF304359B28E7AA7E3AC98D0EA79A7338A7A6019A6E5F663823BC9
          7139DFE474CC9C178AC2262C61438F39F9A75D760ECCA2B44A82772F27867AC5
          F066E2E8CB6460B70F932EE19D0E07E27DEF34BCEB9A544BB158DC32233673D7
          C237CDD9313FCCFF6C9E34C1590CC34368E629139C6058C2F7F8F907FE77CCC5
          3C12E654FD4EF0B4FD2FEEFA5FC0CACACAEA3F30264B90D6BEE6360000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          200000000000001000000000000000000000000000000000000045711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF678C47FF8BA671FFB9CAAAFFDCE5D5FFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF5B8339FF7E9D63FFA2B8
          8EFFD1DCC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFE8EDE3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF4F7F2FFD2DCC8FFD2DCC8FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFF8BA772FF4571
          1EFF8BA772FFFFFFFFFF97AF81FF45711EFF8BA772FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFF4F7F2FF517A
          2CFF517A2CFFE9EEE4FF517A2CFF45711EFFE9EEE4FFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFA2B8
          8FFF45711EFF5C843AFF45711EFF8BA772FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFF4F7
          F2FF517A2CFF45711EFF45711EFFE9EEE4FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF5C843AFF45711EFF517A2CFFF4F7F2FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFB9CB
          ABFF45711EFF517A2CFF45711EFFA2B88FFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFF5C84
          3AFF45711EFFD2DCC8FF517A2CFF517A2CFFF4F7F2FFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFB9CBABFF4571
          1EFF688C48FFFFFFFFFFA2B88FFF45711EFF97AF81FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFD2DC
          C8FFE9EEE4FFFFFFFFFFF4F7F2FFD2DCC8FFDDE5D6FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF729555FF96AF80FFADC19CFFD1DC
          C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF5B8339FF7E9D63FFA2B88EFFC4D3B8FFE8EDE3FFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          00000707070D1B1B1B2B1D1D1D2B1F1F1F2B1F1F1F2B1F1F1F2B1F1F1F2B1E1E
          1E2B1E1E1E2B1E1E1E2B1E1E1E2B1E1E1E2B1E1E1E2B1D1D1D2B1D1D1D2B1D1D
          1D2B1D1D1D2B1D1D1D2B1D1D1D2B1D1D1D2B1C1C1C2B03030305000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001D1D1D55E4E4E4FFE3E3E3FFE1E1E1FFE4E4E4FFDFDFDFFFDEDEDEFFDDDD
          DDFFDBDBDBFFDADADAFFD9D9D9FFD8D8D8FFD7D7D7FFD5D5D5FFD4D4D4FFD3D3
          D3FFD2D2D2FFD1D1D1FFD0D0D0FFD0D0D0FFD0D0D0FF6E6E6EA6000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00001B1B1B56EFEFEFFFEEEEEEFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FFE8E8
          E8FFE7E7E7FFE5E5E5FFE4E4E4FFE3E3E3FFE2E2E2FFE0E0E0FFDFDFDFFFDEDE
          DEFFDDDDDDFFDCDCDCFFDADADAFFDADADAFFDADADAFFE5E5E5FF5B5B5B930000
          0000000000000000000000000000000000000000000000000000000000000000
          00001B1B1B56F1F1F1FFF0F0F0FFEEEEEEFFEBEBEBFFEBEBEBFFE9E9E9FFE8E8
          E8FFE8E8E8FFE7E7E7FFE6E6E6FFE4E4E4FFE3E3E3FFE2E2E2FFE1E1E1FFDFDF
          DFFFDEDEDEFFDDDDDDFFDCDCDCFFDADADAFFDADADAFFE7E7E7FFE8E8E8FF5656
          567B000000000000000000000000000000000000000000000000000000000000
          00001C1C1C57F1F1F1FFF2F2F2FFF0F0F0FFEBEBEBFFDFDFDFFFC7C9D8FFB5B8
          D6FFD2D3DAFFE2E2E2FFE7E7E7FFE6E6E6FFE4E4E4FFE3E3E3FFE2E2E2FFE1E1
          E1FFE0E0E0FFDEDEDEFFDDDDDDFFDCDCDCFFDBDBDBFFE8E8E8FFEDEDEDFFE5E5
          E5FE3D3D3D660000000000000000000000000000000000000000000000000000
          00001C1C1C57F1F1F1FFDEDEDEFFF0F0F0FFEBEBEBFFBABDDCFF6C76D5FF6A74
          D1FF5862CAFFA2A6D1FFDDDDDDFFE5E5E5FFE6E6E6FFE5E5E5FFE3E3E3FFE2E2
          E2FFE1E1E1FFE0E0E0FFDEDEDEFFDDDDDDFFDCDCDCFFE9E9E9FFEFEFEFFFEDED
          EDFFE0E0E0FC3232325300000000000000000000000000000000000000000000
          00001C1C1C58F1F1F1FFD5D5D5FFF0F0F0FFEEEEEEFFCCCFE9FF737ED8FFB7BB
          DBFFC6C8DDFF5D67CBFF999DD0FFDDDDDDFFE6E6E6FFE6E6E6FFE5E5E5FFE3E3
          E3FFE2E2E2FFE1E1E1FFE0E0E0FFDFDFDFFFDDDDDDFFEAEAEAFFF0F0F0FFEFEF
          EFFFECECECFFD7D7D7F72B2B2B3F000000000000000000000000000000000000
          00001C1C1C58F1F1F1FFF1F1F1FFF1F1F1FFEEEEEEFFF1F1F1FFB8BDE5FF7681
          D7FFB7BBDBFFCCCEDCFF515AC7FFBABCD6FFDFDFDFFFE7E7E7FFE6E6E6FFE5E5
          E5FFE4E4E4FFE2E2E2FFE1E1E1FFE0E0E0FFDFDFDFFFECECECFFEFEFEFFFEEEE
          EEFFEDEDEDFFEBEBEBFFC7C7C7F01D1D1D310000000000000000000000000000
          00001C1C1C59F1F1F1FFF1F1F1FFF0F0F0FFEEEEEEFFF2F2F2FFF0F0F0FFD5D7
          EAFF818AD8FF838BD6FF9097D5FF545EC7FFDADADDFFE0E0E0FFE4E4E4FFE5E5
          E5FFE5E5E5FFE4E4E4FFE3E3E3FFE1E1E1FFE0E0E0FFE0E0E0FFDEDEDEFFDCDC
          DCFFDBDBDBFFDADADAFFDBDBDBFF7C7C7CCC0000000000000000000000000000
          00001C1C1C59F1F1F1FFF1F1F1FFF0F0F0FFEEEEEEFFF2F2F2FFF1F1F1FFF0F0
          F0FFEEEEEFFFB3B8E2FF606BCFFF434EC6FF8E94D1FFE0E0E0FFDFDFDFFFDFDF
          DFFFE0E0E0FFE1E1E1FFE2E2E2FFE2E2E2FFE1E1E1FFE0E0E0FFDFDFDFFFDCDC
          DCFFDADADAFFD9D9D9FFD9D9D9FF828282D40000000000000000000000000000
          00001C1C1C59F0F0F0FFF1F1F1FFF0F0F0FFEEEEEEFFF1F1F1FFF1F1F1FFF0F0
          F0FFF0F0F0FFF0F0F0FFE9EAEEFF959CDAFF3C47C3FF4E57C4FF9498D2FFDCDC
          E4FFE4E4E4FFE0E0E0FFDFDFDFFFDEDEDEFFDEDEDEFFDFDFDFFFDDDDDDFFDBDB
          DBFFDADADAFFD9D9D9FFD8D8D8FF828282D40000000000000000000000000000
          00001C1C1C59F0F0F0FFF0F0F0FFF0F0F0FFEEEEEEFFF1F1F1FFF1F1F1FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFEBEBEEFF515CCAFF5D66C9FF4C55C2FF222C
          B6FF5D64C4FF9FA3D4FFDBDCE3FFE3E3E3FFD0D0DCFF6466BCFF292BA8FF4647
          AFFFC1C1D4FFDBDBDBFFDBDBDBFF838383D40000000000000000000000000000
          00001D1D1D5AF0F0F0FFF0F0F0FFF0F0F0FFEEEEEEFFF1F1F1FFF1F1F1FFF1F1
          F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF949ADAFF535EC9FFE5E5E6FFBEC0
          DCFF6F75C9FF1D26B2FF0C14ABFF4449B8FF1C21AAFF0E13A4FF4345B2FF0001
          9CFF4747B0FFDFDFDFFFDEDEDEFF858585D40000000000000000000000000000
          00001D1D1D5BF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFF1F1F1FFF1F1F1FFF1F1
          F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFCED1E8FF4451C8FFBCBFDFFFE9E9
          E9FFEBEBEBFFE9E9EAFF989BD2FF050EA8FF2026ADFF191EA9FF0D11A3FF1B1D
          A6FF8D8DC7FFE1E1E1FFE0E0E0FF868686D40000000000000000000000000000
          00001D1D1D5BF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF1F1F1FFF1F1F1FFF1F1
          F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFEFEFEFFF5F6BD0FF868DD6FFEBEB
          EBFFECECECFFDEDEE8FF2730B5FF232BB2FFD8D8E3FFE7E7E7FFE6E6E6FFE5E5
          E5FFE3E3E3FFE2E2E2FFE1E1E1FF868686D40000000000000000000000000000
          00001D1D1D5CF0F0F0FFD1D1D1FFEEEEEEFFEDEDEDFFF0F0F0FFF1F1F1FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FF9199DBFF5A65CEFFEEEE
          EEFFEDEDEDFF6068C8FF0D19B0FFBABCDDFFEAEAEAFFE8E8E8FFE7E7E7FFE6E6
          E6FFE5E5E5FFE3E3E3FFE2E2E2FF878787D40000000000000000000000000000
          00001D1D1D5CF0F0F0FFE0E0E0FFEFEFEFFFEDEDEDFFF0F0F0FFF1F1F1FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FFBEC2E6FF4D5ACDFFDADC
          ECFFBABEE3FF212EBAFF6971CBFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FFE7E7
          E7FFE6E6E6FFE5E5E5FFE4E4E4FF888888D40000000000000000000000000000
          00001E1E1E5DF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FFE6E7EFFF5563D0FFAEB3
          E3FF545FCBFF3643C2FFE1E2EEFFF0F0F0FFEDEDEDFFEBEBEBFFEAEAEAFFE9E9
          E9FFE7E7E7FFE6E6E6FFE5E5E5FF898989D40000000000000000000000000000
          00001E1E1E5DF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FF7783D9FF5966
          D1FF3F4DC8FF9EA4DDFFF3F3F3FFF2F2F2FFF2F2F2FFEEEEEEFFEBEBEBFFEAEA
          EAFFE9E9E9FFE8E8E8FFE6E6E6FF8A8A8AD40000000000000000000000000000
          00001D1D1D5DF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FF9BA3E0FF5563
          D1FF5B68D1FFEDEEF1FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF0F0F0FFECEC
          ECFFEAEAEAFFE9E9E9FFE8E8E8FF8B8B8BD40000000000000000000000000000
          00001D1D1D5EF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFB2B9E6FF5C6B
          D4FFB6BBE5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF1F1
          F1FFECECECFFEAEAEAFFE9E9E9FF8B8B8BD40000000000000000000000000000
          00001616165EF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF919BE1FF6372
          D8FFD7DAECFFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF1F1F1FFECECECFFEAEAEAFF8C8C8CD40000000000000000000000000000
          00000F0F0F5FF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFECEDF0FF7A88DFFF6B79
          DBFFC7CCEAFFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF1F1F1FFEDEDEDFF8D8D8DD40000000000000000000000000000
          00000F0F0F5FF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFD9DCEDFF8290E2FF7282
          DEFFB6BCE7FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF2F2F2FF8E8E8ED40000000000000000000000000000
          00000F0F0F60F0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFCBD0ECFFA0AAE7FF8A96
          E2FFB2B9E7FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF4F4F4FFF4F4F4FFF3F3F3FF909090D40000000000000000000000000000
          00000F0F0F60F0F0F0FFD1D1D1FFEEEEEEFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFCDD2EDFFAAB3E9FF9BA6
          E6FFB6BDE9FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF4F4F4FFF3F3F3FF909090D40000000000000000000000000000
          00000F0F0F60F0F0F0FFE1E1E1FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFE3E5EFFF98A5E9FF8997
          E5FFCBD0ECFFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF4F4F4FF919191D40000000000000000000000000000
          00000F0F0F60F0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD7DBEEFFC9CE
          ECFFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FF919191D40000000000000000000000000000
          00000F0F0F61F0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FF919191D40000000000000000000000000000
          00000F0F0F61F0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
          F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
          F2FFF3F3F3FFF3F3F3FFF3F3F3FF909090D40000000000000000000000000000
          0000060606474D4D4DAA4D4D4DA94D4D4DA94F4F4FA84C4C4CA84C4C4CA84C4C
          4CA84C4C4CA84C4C4CA74C4C4CA74B4B4BA64C4C4CA64C4C4CA64C4C4CA54C4C
          4CA54C4C4CA54C4C4CA54C4C4CA54C4C4CA44C4C4CA44B4B4BA34B4B4BA34B4B
          4BA24B4B4BA24B4B4BA24B4B4BA2383838840000000000000000000000000000
          0000000000020000000300000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000001000000010000
          0001000000010000000100000001000000010000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1507274F3D186E0F0C0514020202041818
          18252626263A302F2F4A3C3B3B5C403F3F634746466E5251507F5251507F5251
          507F55555484636261996564639C6463629B6463629B6463629B6463629B6463
          629B6463629B6564639C63626199555554845251507F5251507F5151507E4444
          436A4040406437383A55544B3686A8802AFFB6903DFFA9843FDB0E0E0E175150
          507D6E6A69A67E7773BA82888CD7898F94E28A9194E490969AED92999DF1939A
          9DF2939A9DF2939A9DF2959B9FF5989FA3FA989FA3FA989FA3FA989FA3FA989F
          A3FA989FA3FA949B9FF4939A9DF2939A9DF2939A9DF292999DF18F9699EC8A90
          94E3869199E18A897AE4A77C21FFB58E3BFFC09746FFC39B50F0000000000000
          00001624293805A2DDF400ABEBFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00AB
          EAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00AB
          EAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00ABEAFF00AC
          EFFF07A6DDFFA57C22FFB38B38FFBE9643FFD5AC5FFF7C683E8D000000000000
          00000599CFE30BABE5FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAA
          E4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAAE4FF0CAA
          E4FF0CAAE4FF0CAAE4FF0CAAE5FF0BAAE5FF0BAAE5FF0CAAE4FF0BABE6FF05AC
          ECFFA27D2CFFB38935FFBD9544FFD0A351FFC3A365D400000000000000000000
          000011ADE9FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11AC
          E6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11ACE6FF11AC
          E6FF0EABE6FF06ABE9FF02AAE9FF13AAE4FF0EAAE5FF02ABEAFF00AFF6FF8D83
          44FFB3862FFFBB9342FFCC9D48FFDFC688FF0707060B00000000000000000000
          000015AEE8FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14AC
          E5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF14ACE5FF0DAC
          E7FF1BACE3FF80B2C4FFBCB4B0FFC3B4AEFFC4B4AEFFAFB3B7FF77AAB5FFB481
          23FFBB923EFFC69947FFF8C674FF21ABDAFF0000000000000000000000000000
          00001AB1E9FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAF
          E7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF1AAFE7FF11AEE9FF42B0
          DAFFC8B8B2FFC0B9B6FFBEB8B6FFBDB7B6FFBDB7B6FFBEB9B6FFBEBABAFFB8B8
          B9FFC59B4CFFF8BC63FF4CB1C9FF0FAEEDFF0000000000000000000000000000
          00001EB1EBFF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0
          E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1AAFE8FF30B1E2FFCEBE
          B7FFC0BDBBFFBCBABAFF8BBDD1FF85C7DEFF86C5DDFF90BACAFFC5BCB8FFBCBD
          BFFFCABEB5FF51B9D2FF10AEEEFF1EB0E8FF0000000000000000000000000000
          000022B2EAFF21B0E7FF21B0E7FF21B0E7FF21B0E7FF21B0E7FF21B0E7FF21B0
          E7FF21B0E7FF21B0E7FF21B0E7FF21B0E7FF21B0E7FF13AFEBFFAABDC5FFC5C1
          BFFFBBBEBFFF78C8E7FF89D4EFFF79CFEFFF79CFF0FF83D4F3FF73C0DEFFCAC1
          BCFFC8C1BFFF6DB7D6FF19AFE9FF21B0E7FF0000000000000000000000000000
          000027B5ECFF27B3E9FF27B3E9FF27B3E9FF27B3E9FF27B3E9FF27B3E9FF27B3
          E9FF27B3E9FF27B3E9FF27B3E9FF27B3E9FF24B2E9FF2FB3E6FFD5C6C0FFCAC5
          C2FF87C3DCFF84D0EDFF79CDEEFF7DCEEDFF7CD0EEFF7ED1F0FF7AD2F5FF93BF
          D0FFCBC5C3FFC0C4C5FF18B1ECFF27B3E9FF0000000000000000000000000000
          00002BB5EDFF2BB4EAFF2BB4EAFF2BB4EAFF2BB4EAFF2BB4EAFF2BB4EAFF2BB4
          EAFF2BB4EAFF2BB4EAFF2BB4EAFF2BB4EAFF25B3EAFF58B8E0FFD3CAC6FFD0C9
          C6FF70C8EBFF7BCEEDFF7DCFEEFF7ED0EFFF81D1F0FF80D1F1FF90D8F4FF77C5
          E3FFCFC9C6FFDDCEC9FF24B2EAFF29B4EAFF0000000000000000000000000000
          00002FB6EEFF2EB5EBFF2EB5EBFF2EB5EBFF2EB5EBFF2EB5EBFF2EB5EBFF2EB5
          EBFF2EB5EBFF2EB5EBFF2EB5EBFF2EB5EBFF29B3ECFF5EBCE0FFD7CECAFFD3CB
          C8FF73CCEDFF80CFEEFF80CFEDFF82D0EEFF82D1EFFF80D0EFFFADE3F6FF75C6
          E5FFD2CBC9FFE2D5D0FF2CB4E9FF2DB4EBFF0000000000000000000000000000
          000037B9EFFF32B4EAFF34B5EAFF34B5EAFF34B5EAFF34B5EAFF34B5EAFF34B5
          EAFF34B5EAFF34B5EAFF34B5EAFF34B5EAFF31B5EBFF45B9E7FFE2D6D1FFD5CF
          CCFF79C5E5FFADDFF4FF8ED3EFFF85D1EFFF8DD4F1FFABE0F5FFA7E1F8FF8BC3
          DAFFD4CECCFFDEDAD8FF23B2ECFF34B5EAFF0000000000000000000000000000
          00004CC3F1FF3FBAECFF33B6EBFF36B6EBFF36B6EBFF36B6EBFF36B6EBFF36B6
          EBFF36B6EBFF36B6EBFF36B7EBFF38B8ECFF37B8ECFF28B4EDFFD5D9DBFFD3CF
          CEFFBCCBD3FF6ECAF1FFB5E4F5FFBAE5F6FFBAE5F7FFAEE4F7FF64C5EBFFD5D0
          CDFFDDD6D4FFA2D0E3FF2DB5ECFF38B8ECFF0000000000000000000000000000
          000032A8DBEB86DCF8FF59C7F1FF4CBFEEFF4DC0EEFF4DC0EEFF4DC0EEFF4DC0
          EEFF4DC0EEFF4EC0EEFF45BDEDFF34B5EBFF39B7ECFF36B7EDFF68C1E6FFF0E3
          DDFFD5D1CFFFC0CED3FF75C5E6FF6ECBF0FF70CAEFFF7EC5E3FFD3D0D0FFD5D3
          D2FFF3E8E4FF3CB6E9FF39B8EDFF3BB9EDFF0000000000000000000000000000
          00001072B4DF3EB9EDFF6BD3F7FF75D7F7FF73D6F7FF73D6F7FF73D6F7FF73D6
          F7FF73D6F7FF73D6F7FF7EDAF8FF90E2FAFF60C8F2FF3BB7ECFF33B7EFFF93CB
          E4FFF5E8E2FFD8D4D3FFDBD4D1FFDCD3D0FFDBD3D0FFD9D3D1FFDFDBD9FFF9ED
          E6FF5FBEE5FF3AB8EFFF41B9EEFF41B9EEFF0000000000000000000000000000
          00000869B4DF0671C7FF0B7CCEFF0B7ACDFF0B7ACDFF0B7ACDFF0B7ACDFF0B7A
          CDFF0B7ACDFF0B79CCFF1284D0FF29A1E0FF70D3F7FF6BCEF3FF40B9ECFF37B9
          EFFF6BC2E7FFDEE3E6FFF4E9E4FFF0E8E4FFF1E9E6FFF8EBE5FFC7DCE5FF4FBB
          EAFF3DBAEEFF44BCEDFF44BCEDFF44BCEDFF0000000000000000000000000000
          00000D72BBDF0E7DD1FF0D7CD1FF0D7CD1FF0D7CD1FF0D7CD1FF0D7CD1FF0D7C
          D1FF0D7CD1FF0D7CD1FF0D7BD0FF0977CEFF1588D7FF70D3F5FF54C1F0FF48BB
          EEFF45BBEFFF3AB8F0FF56BDEBFF6EC1E5FF6CC1E6FF49BAECFF3CB9EFFF47BC
          EFFF4ABDEFFF4ABDEFFF4ABDEFFF4ABDEFFF0000000000000000000000000000
          00001379C3E01686DAFF1285D8FF1386D9FF1386D9FF1386D9FF1386D9FF1386
          D9FF1386D9FF1386D9FF1386D9FF1386D9FF0E81D6FF2297E0FF87DDF9FF47BB
          EEFF4DBDF0FF4EBEF0FF4BBDF0FF49BCF0FF49BCF0FF4CBDF0FF4EBEF0FF4EBE
          F0FF4EBEF0FF4EBEF0FF4EBEF0FF4CBDF0FF0000000000000000000000000000
          00001071B7CC429FE3FF0E88DFFF1289DFFF1289DFFF1289DFFF1289DFFF1289
          DFFF1289DFFF1289DFFF1289DFFF1289DFFF1289DFFF0B84DDFF41B2ECFF80D6
          F6FF4ABAEFFF51BEF1FF51BEF1FF51BEF1FF51BEF1FF51BEF1FF51BEF1FF51BE
          F1FF51BEF1FF51BEF1FF50BDF0FF59C3F2FF0000000000000000000000000000
          0000062033382798E8FF57AAEBFF53A9E9FF53A9E9FF53A9E9FF53A9E9FF53A9
          E9FF53A9E9FF53A9E9FF53A9E9FF53A9E9FF53A9E9FF52A9E9FF52A8E8FF69CC
          F4FF88DBF8FF51BDF0FF52BEEFFF52BEEFFF52BEEFFF52BEEFFF52BEEFFF52BE
          EFFF52BEEFFF51BEEFFF5DC4F2FF71CFF4FF0000000000000000000000000000
          00000000000001050809092940420A293F410B2A3F410B293F410B293F410B29
          3F410B293F410B293F410B293F410B293F410B293F410B293F4109283D3F1B46
          5F6564C6F2FF92E0FAFF92DFFAFF92DFFAFF92DFFAFF92DFFAFF92DFFAFF92DF
          FAFF92DFFAFF92E0FAFF8BDCF9FF53B6E6F50000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012252E304A9DC6D15AC0F2FF5AC0F2FF5AC0F2FF5AC0F2FF5AC0F2FF5AC0
          F2FF5AC0F2FF5AC0F2FF5BC0F2FF18323E420000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004090C0C102028280F1F26260F1F26260F1F26260F1F
          26260F1F26260F1F262600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object barManager: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = img32
    ImageOptions.LargeImages = img32
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = False
    Left = 135
    Top = 305
    PixelsPerInch = 96
    object barToolbar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockControl = docToolbar
      DockedDockControl = docToolbar
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1327
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = img32
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnClose'
        end
        item
          Visible = True
          ItemName = 'btnInsert'
        end
        item
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          Visible = True
          ItemName = 'btnDelete'
        end
        item
          Visible = True
          ItemName = 'btnRefresh'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnClose: TdxBarLargeButton
      Action = actExit
      Category = 0
      ScreenTip = tipExit
      AutoGrayScale = False
    end
    object btnInsert: TdxBarLargeButton
      Action = actInsert
      Category = 0
      ScreenTip = tipInsert
      AutoGrayScale = False
    end
    object btnDelete: TdxBarLargeButton
      Action = actDelete
      Category = 0
      ScreenTip = tipDelete
      AutoGrayScale = False
    end
    object btnEdit: TdxBarLargeButton
      Action = actEdit
      Category = 0
      ScreenTip = tipEdit
      AutoGrayScale = False
    end
    object btnRefresh: TdxBarLargeButton
      Action = actRefresh
      Category = 0
      ScreenTip = tipRefresh
      AutoGrayScale = False
    end
  end
  object repScreenTip: TdxScreenTipRepository
    AssignedFonts = [stbHeader, stbDescription, stbFooter]
    DescriptionFont.Charset = ANSI_CHARSET
    DescriptionFont.Color = 5000268
    DescriptionFont.Height = -11
    DescriptionFont.Name = 'Verdana'
    DescriptionFont.Style = []
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = 5000268
    FooterFont.Height = -12
    FooterFont.Name = 'Verdana'
    FooterFont.Style = [fsBold]
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = 5000268
    HeaderFont.Height = -12
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    Left = 200
    Top = 310
    PixelsPerInch = 96
    object tipExit: TdxScreenTip
      Header.Text = 'Exit'
      Description.Text = 'Exit user manager'
    end
    object tipInsert: TdxScreenTip
      Header.Text = 'Insert'
      Description.Text = 'Insert a new user'#13#10
    end
    object tipEdit: TdxScreenTip
      Header.Text = 'Edit'
      Description.Text = 'Edit the selected user'#13#10
    end
    object tipDelete: TdxScreenTip
      Header.Text = 'Delete'
      Description.Text = 'Delete the selected user'#13#10
      Width = 280
    end
    object tipRefresh: TdxScreenTip
      Header.Text = 'Refresh'
      Description.Text = 'Refresh user listing'
    end
    object tipPreview: TdxScreenTip
      Header.Text = 'Preview'
      Description.Text = 'Preview timesheet'
    end
    object tipPrint: TdxScreenTip
      Header.Text = 'Print'
      Description.Text = 'Print timesheet'
    end
    object tipPDF: TdxScreenTip
      Header.Text = 'PDF'
      Description.Text = 'Export timesheet to PDF'
    end
    object tipExcel: TdxScreenTip
      Header.Text = 'Excel'
      Description.Text = 'Export timesheet to Excel'
    end
  end
  object styHintController: TcxHintStyleController
    Global = False
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <>
    HintStyle.ScreenTipActionLinks = <>
    HintShortPause = 0
    HintPause = 0
    HintHidePause = 15000
    Left = 290
    Top = 309
  end
end
