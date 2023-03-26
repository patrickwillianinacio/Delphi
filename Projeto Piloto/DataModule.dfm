object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 1278
  Top = 241
  Height = 295
  Width = 323
  object SQLConnection1: TSQLConnection
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=192.168.1.26:backup/softalbak03012019.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=bjj*34jb'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=1'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=sysdba'
      'WaitOnLocks=True'
      'Trim Char=False')
    VendorLib = 'GDS32.DLL'
    Left = 56
    Top = 32
  end
end
