unit ufrmAyarPrsMektupTipi;

interface

{$I ThsERP.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, StrUtils, Vcl.Menus,
  Vcl.AppEvnts, Vcl.Samples.Spin,

  Ths.Erp.Helper.Edit,
  Ths.Erp.Helper.ComboBox,
  Ths.Erp.Helper.Memo,

  ufrmBase,
  ufrmBaseInputDB;

type
  TfrmAyarPrsMektupTipi = class(TfrmBaseInputDB)
    edtmektup_tipi: TEdit;
    lblmektup_tipi: TLabel;
    procedure btnAcceptClick(Sender: TObject);override;
  private
  public
  protected
  published
  end;

implementation

{$R *.dfm}

procedure TfrmAyarPrsMektupTipi.btnAcceptClick(Sender: TObject);
begin
  if (FormMode = ifmNewRecord) or (FormMode = ifmCopyNewRecord) or (FormMode = ifmUpdate) then
  begin
    if (ValidateInput) then
    begin
      btnAcceptAuto;

      inherited;
    end;
  end
  else
    inherited;
end;

end.
