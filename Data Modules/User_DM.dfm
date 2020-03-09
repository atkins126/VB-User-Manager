inherited UserDM: TUserDM
  object VbdevConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Data\Firebird\VB\VB.FDB'
      'ConnectionDef=VB Live')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtCurrency
      end
      item
        SourceDataType = dtSingle
        TargetDataType = dtDouble
      end>
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    Connected = True
    LoginPrompt = False
    Left = 559
    Top = 12
  end
  object cdsUser: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    CachedUpdates = True
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 150
    Top = 10
    object cdsUserID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUserFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Required = True
      Size = 30
    end
    object cdsUserLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Required = True
      Size = 30
    end
    object cdsUserLOGIN_NAME: TStringField
      DisplayLabel = 'Login Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
      Required = True
    end
    object cdsUserEMAIL_ADDRESS: TStringField
      DisplayLabel = 'Email Address'
      FieldName = 'EMAIL_ADDRESS'
      Origin = 'EMAIL_ADDRESS'
      Size = 100
    end
    object cdsUserPASSWORD: TStringField
      DisplayLabel = 'Password'
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
      Size = 100
    end
    object cdsUserACCOUNT_ENABLED: TIntegerField
      DisplayLabel = 'Account Enabled'
      FieldName = 'ACCOUNT_ENABLED'
      Origin = 'ACCOUNT_ENABLED'
      Required = True
    end
  end
  object dtsUser: TDataSource
    DataSet = cdsUser
    Left = 150
    Top = 65
  end
  object cdsRight: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    CachedUpdates = True
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 245
    Top = 10
    object cdsRightID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRightNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
    object cdsRightDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Required = True
      Size = 255
    end
    object cdsRightIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
      Origin = 'IS_ACTIVE'
      Required = True
    end
    object cdsRightTASK_ID: TIntegerField
      FieldName = 'TASK_ID'
      Origin = 'TASK_ID'
      Required = True
    end
    object cdsRightEXE_NAME: TStringField
      FieldName = 'EXE_NAME'
      Origin = 'EXE_NAME'
      Size = 40
    end
  end
  object cdsAssigned: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    CachedUpdates = True
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 330
    Top = 10
    object cdsAssignedID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAssignedUSER_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
    end
    object cdsAssignedRIGHT_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'RIGHT_ID'
      Origin = 'RIGHT_ID'
      Required = True
    end
  end
  object cdsAvailable: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    CachedUpdates = True
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 415
    Top = 10
  end
  object dtsRight: TDataSource
    Left = 245
    Top = 65
  end
  object dtsAssigned: TDataSource
    Left = 330
    Top = 65
  end
  object dtsAvailable: TDataSource
    Left = 415
    Top = 65
  end
end
