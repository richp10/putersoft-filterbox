//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USERES("psc_c5.res");
USEPACKAGE("vcl50.bpi");
USEUNIT("psc_reg.pas");
USERES("psc_reg.dcr");
USEUNIT("psc_calendar.pas");
USEUNIT("psc_const.pas");
USEUNIT("psc_fltbox.pas");
USEUNIT("psc_procs.pas");
USEPACKAGE("vcldb50.bpi");
USEPACKAGE("vclx50.bpi");
USEUNIT("psc_fontbox.pas");
USEUNIT("psc_wrapper.pas");
USEUNIT("psc_colorbox.pas");
USEUNIT("psc_theme.pas");
USEUNIT("psc_holidays.pas");
USEUNIT("myla_interfaces.pas");
USEUNIT("myla_system.pas");
USEUNIT("psc_button_color.pas");
USEUNIT("psc_calculator.pas");
USEUNIT("psc_edit.pas");
USEUNIT("psc_edit_color.pas");
USEUNIT("psc_edit_date.pas");
USEUNIT("psc_edit_parts.pas");
USEUNIT("psc_expreval.pas");
USEUNIT("psc_parser_date.pas");
USEUNIT("myla_parser.pas");
//---------------------------------------------------------------------------
#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Package source.
//---------------------------------------------------------------------------

#pragma argsused
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void*)
{
        return 1;
}
//---------------------------------------------------------------------------
