program gridcolors_demo;

uses
  Forms,
  gridcolors_demo_main in 'gridcolors_demo_main.pas' {gridcolor_demo_frm_main},
  gridcolors_const in 'gridcolors_const.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tgridcolor_demo_frm_main, gridcolor_demo_frm_main);
  Application.Run;
end.
