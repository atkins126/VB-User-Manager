inherited MainFrm: TMainFrm
  Caption = 'MainFrm'
  ClientHeight = 619
  ClientWidth = 917
  ExplicitWidth = 933
  ExplicitHeight = 658
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 688
    Height = 498
    ExplicitWidth = 688
    ExplicitHeight = 498
  end
  object grdUser: TcxGrid [1]
    Left = 210
    Top = 25
    Width = 801
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
  object grdAvailable: TcxGrid [2]
    Left = 515
    Top = 215
    Width = 471
    Height = 200
    TabOrder = 2
    object viewAvailable: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.GroupByBox = False
      Bands = <
        item
        end>
    end
    object lvlAvailable: TcxGridLevel
      GridView = viewAvailable
    end
  end
  object grdAssigned: TcxGrid [3]
    Left = 530
    Top = 421
    Width = 471
    Height = 200
    TabOrder = 3
    object viewAssigned: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.GroupByBox = False
      Bands = <
        item
        end>
    end
    object lvlAssigned: TcxGridLevel
      GridView = viewAssigned
    end
  end
  object navUser: TcxDBNavigator [4]
    Left = 335
    Top = 575
    Width = 232
    Height = 25
    Buttons.CustomButtons = <>
    Buttons.First.Hint = 'Go to first record'
    Buttons.PriorPage.Hint = 'move back 10 records'
    Buttons.PriorPage.Visible = False
    Buttons.Prior.Hint = 'Go to previous record'
    Buttons.Next.Hint = 'Go to next record'
    Buttons.NextPage.Hint = 'Move forward 10 records'
    Buttons.NextPage.Visible = False
    Buttons.Last.Hint = 'Go to last record'
    Buttons.Insert.Hint = 'Insert a new record'
    Buttons.Append.Hint = 'Add a neew record'
    Buttons.Delete.Hint = 'delete selected records'
    Buttons.Edit.Hint = 'Edit selected record'
    Buttons.Post.Hint = 'Save changes'
    Buttons.Cancel.Hint = 'Cancel changes'
    Buttons.Refresh.Hint = 'Refresh dataset'
    Buttons.SaveBookmark.Visible = False
    Buttons.GotoBookmark.Visible = False
    Buttons.Filter.Hint = 'Filter dataset'
    Buttons.Filter.Visible = False
    DataSource = UserDM.dtsUser
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
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
  object sknController: TdxSkinController
    Kind = lfOffice11
    ScrollbarMode = sbmClassic
    SkinName = 'UserSkin'
    UseImageSet = imsAlternate
    Left = 285
    Top = 350
  end
end
