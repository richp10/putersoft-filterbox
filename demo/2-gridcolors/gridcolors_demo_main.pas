unit gridcolors_demo_main;

interface
{$I psc_defines.inc}

uses
  Windows,
  Messages,
  SysUtils,
{$IFDEF D6}
  Variants,
{$ENDIF}

{$IFDEF D7}
  XPMan,
{$ENDIF}

  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  DB,
  DBTables,
  Grids,
  DBGrids,
  ExtCtrls,
  Buttons,
  StdCtrls,

  myla_interfaces,
  myla_system,
  psc_fltbox,
  psc_listbox,

  psc_procs,
  psc_expreval,
  gridcolors_frm_setup,
  gridcolors_const,
  psc_wrapper,
  psc_button_color;


type
  Tgridcolor_demo_frm_main = class(TForm)
    DBGrid1: TDBGrid;
    Table1: TTable;
    DataSource1: TDataSource;
    Panel_Buttons: TPanel;
    Table1SpeciesNo: TFloatField;
    Table1Category: TStringField;
    Table1Common_Name: TStringField;
    Table1SpeciesName: TStringField;
    Table1Lengthcm: TFloatField;
    Table1Length_In: TFloatField;
    Table1Notes: TMemoField;
    Table1Graphic: TGraphicField;
    BitBtn_Setup: TBitBtn;
    PSCGridColors1: TPSCGridColors;
    PSCFltBld1: TPSCFltBld;
    PSCFltBld2: TPSCFltBld;
    PSCFltBld3: TPSCFltBld;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn_SetupClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure FillGridColors;
    procedure DoApply(Sender : TObject);
  public
    { Public declarations }
  end;

var
  gridcolor_demo_frm_main: Tgridcolor_demo_frm_main;

implementation

{$R *.dfm}

procedure Tgridcolor_demo_frm_main.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not (gdSelected in State) then
    PSCGridColors1.UpdateFormatting(PSCCreateCanvasAdapter(DBGrid1.Canvas),
    Column.FieldName);
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tgridcolor_demo_frm_main.BitBtn_SetupClick(Sender: TObject);
begin
  psc_frm_setup := Tpsc_frm_setup.Create(nil);
  try
    psc_frm_setup.LoadGridProperties(PSCGridColors1, Table1);
    psc_frm_setup.MyGridColorsUpdate := DoApply;
    psc_frm_setup.ShowModal;
    if psc_frm_setup.ModalResult = mrOk then
    begin
      psc_frm_setup.SaveGridProperties(PSCGridColors1);
      DBGrid1.Invalidate;
    end;
  finally
    psc_frm_setup.Free;
  end;
end;

procedure Tgridcolor_demo_frm_main.FormCreate(Sender: TObject);
begin
  FillGridColors;
end;

procedure Tgridcolor_demo_frm_main.FillGridColors;
var
  i : integer;
begin
  PSCGridColors1.RecordsInfo.BeginUpdate;
  try
    for i := Low(CPSCRecordsInfoProp) to High(CPSCRecordsInfoProp) do
      with TPSCRecordSetStyle(PSCGridColors1.RecordsInfo.Add) do
      begin
        Options := [rssoSetColor, rssoSetFontColor, rssoSetFontBold,
          rssoSetFontItalic, rssoSetFontUnderline, rssoSetFontStrikeOut];
        Name := 'Custom' + IntToStr(i);
        If i=1 then
          Name := Name + ' (this item is readonly)';
        Color :=  CPSCRecordsInfoProp[i].Color;
        FontColor := CPSCRecordsInfoProp[i].FontColor;
        case i of
          1:
            FilterSource := PSCFltBld1;
          2:
            FilterSource := PSCFltBld2;
          3:
            FilterSource := PSCFltBld3;
        end;
        DataField := CPSCRecordsInfoProp[i].DataField;
        If i=1 then ReadOnly := true;
        Active := true;
      end;
  finally
    PSCGridColors1.RecordsInfo.EndUpdate;
  end;
end;

procedure Tgridcolor_demo_frm_main.DoApply(Sender: TObject);
begin
  if psc_frm_setup <> nil then
  begin
    psc_frm_setup.SaveGridProperties(PSCGridColors1);
    DBGrid1.Invalidate;
  end;
end;

end.
