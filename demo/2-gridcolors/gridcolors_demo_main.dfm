object gridcolor_demo_frm_main: Tgridcolor_demo_frm_main
  Left = 199
  Top = 181
  Width = 761
  Height = 480
  Caption = 'puterSoft.SDK 2.0 - TPSCGridColors Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 38
    Width = 753
    Height = 408
    Align = alClient
    DataSource = DataSource1
    DefaultDrawing = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object Panel_Buttons: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object BitBtn_Setup: TBitBtn
      Left = 6
      Top = 6
      Width = 163
      Height = 25
      Caption = 'Automatic Formatting...'
      TabOrder = 0
      OnClick = BitBtn_SetupClick
    end
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    Filtered = True
    FieldDefs = <
      item
        Name = 'Species No'
        DataType = ftFloat
      end
      item
        Name = 'Category'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Common_Name'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Species Name'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Length (cm)'
        DataType = ftFloat
      end
      item
        Name = 'Length_In'
        DataType = ftFloat
      end
      item
        Name = 'Notes'
        DataType = ftMemo
        Size = 50
      end
      item
        Name = 'Graphic'
        DataType = ftGraphic
      end>
    IndexDefs = <
      item
        Fields = 'Species No'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'Species No'
    StoreDefs = True
    TableName = 'biolife.db'
    Left = 568
    Top = 8
    object Table1SpeciesNo: TFloatField
      FieldName = 'Species No'
    end
    object Table1Category: TStringField
      FieldName = 'Category'
      Size = 15
    end
    object Table1Common_Name: TStringField
      FieldName = 'Common_Name'
      Size = 30
    end
    object Table1SpeciesName: TStringField
      FieldName = 'Species Name'
      Size = 40
    end
    object Table1Lengthcm: TFloatField
      FieldName = 'Length (cm)'
    end
    object Table1Length_In: TFloatField
      FieldName = 'Length_In'
    end
    object Table1Notes: TMemoField
      FieldName = 'Notes'
      BlobType = ftMemo
      Size = 50
    end
    object Table1Graphic: TGraphicField
      FieldName = 'Graphic'
      BlobType = ftGraphic
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 536
    Top = 8
  end
  object PSCGridColors1: TPSCGridColors
    DataSet = Table1
    Left = 144
    Top = 176
  end
  object PSCFltBld1: TPSCFltBld
    DataSet = Table1
    Items = <
      item
        DataField = 'Species No'
        TemplCat = 'Number'
        Template = '#more than'
        ParamValue = 90030
      end>
    Left = 496
    Top = 8
  end
  object PSCFltBld2: TPSCFltBld
    DataSet = Table1
    Items = <
      item
        DataField = 'Common_Name'
        TemplCat = 'Text'
        Template = '#contains'
        ParamValue = 'fish'
      end>
    Left = 464
    Top = 8
  end
  object PSCFltBld3: TPSCFltBld
    DataSet = Table1
    Items = <
      item
        DataField = 'Length (cm)'
        TemplCat = 'Number'
        Template = '#more than'
        ParamValue = 90.000000000000000000
      end>
    Left = 432
    Top = 8
  end
end
