object Server: TServer
  OldCreateOrder = False
  Height = 308
  Width = 450
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\10\bin\libpq.dll'
    Left = 48
    Top = 20
  end
  object DataBase: TFDConnection
    Params.Strings = (
      'Database=DB_TESTE'
      'User_Name=postgres'
      'Password=123456'
      'Server=127.0.0.1'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 50
    Top = 76
  end
end
