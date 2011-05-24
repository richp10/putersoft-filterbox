unit gridcolors_const;

interface
{$I psc_defines.inc}

uses
 Graphics;

type
  TPSCGridColorsProp = packed record
    Color : TColor;
    FontColor : TColor;
    Filter : string;
    DataField : string;
  end;

const
  clPSCMoneyGreen = TColor($C0DCC0);


  SPSCAllFieldsFilter = '[Species No] > 90030';
  SPSCNumericFieldsFilter = 'Common_Name LIKE ''%fish%''';
  SPSCTextFieldsFilter = '[Length (cm)] > 90';

  SPSCAllFieldsDataField = '';
  SPSCNumericFieldsDataField = '[Species No], Length_In, Length (cm)';
  SPSCTextFieldsDataField = 'Category, Common_Name, [Species Name]';

  CPSCAllFieldsColor = clPSCMoneyGreen;
  CPSCNumericFieldsColor = clTeal;
  CPSCTextFieldsColor = clInfoBk;

  CPSCAllFieldsFontColor = clRed;
  CPSCNumericFieldsFontColor = clYellow;
  CPSCTextFieldsFontColor = clPurple;

   CPSCRecordsInfoProp : array[1..3] of TPSCGridColorsProp =
   (
    (
      Color: CPSCAllFieldsColor;
      FontColor: CPSCAllFieldsFontColor;
      Filter: SPSCAllFieldsFilter;
      DataField: SPSCAllFieldsDataField
    ),
    (
      Color: CPSCNumericFieldsColor;
      FontColor: CPSCNumericFieldsFontColor;
      Filter: SPSCNumericFieldsFilter;
      DataField: SPSCNumericFieldsDataField
    ),
    (
      Color: CPSCTextFieldsColor;
      FontColor: CPSCTextFieldsFontColor;
      Filter: SPSCTextFieldsFilter;
      DataField: SPSCTextFieldsDataField
    )
   );

implementation

end.
