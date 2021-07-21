unit V_hawbItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbcomb, StdCtrls, Buttons, Mask, wwdbedit, wwdblook, ExtCtrls;

type
  TV_hawbItemFRM = class(TForm)
    Panel1: TPanel;
    TariffDetailsGroup: TGroupBox;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label62: TLabel;
    OriginCountryFLD: TwwDBLookupCombo;
    TariffDescriptionFLD: TwwDBEdit;
    TariffCodeFLD: TwwDBEdit;
    SelectTariffFLD: TwwDBEdit;
    TitlePNL: TPanel;
    Panel8: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    ButtonsPNL: TPanel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    TaxesBTN: TBitBtn;
    SaveTariffBTN: TBitBtn;
    Panel11: TPanel;
    BitBtn3: TBitBtn;
    ItemDetailsGroup: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    CivilFLD: TwwDBLookupCombo;
    NetFLD: TwwDBEdit;
    InvoiceValueFLD: TwwDBEdit;
    CustomsValueFLD: TwwDBEdit;
    FCurrencyFLD: TwwDBEdit;
    PosostosisFLD: TwwDBComboBox;
    MUnitFLD: TwwDBLookupCombo;
    WeightFLD: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    ImportDutyGroup: TGroupBox;
    Label32: TLabel;
    Label15: TLabel;
    Label33: TLabel;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  V_hawbItemFRM: TV_hawbItemFRM;

implementation

{$R *.DFM}

end.
