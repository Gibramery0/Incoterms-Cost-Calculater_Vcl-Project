unit IUnit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    Panel2: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Button2: TButton;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label22: TLabel;
    Panel4: TPanel;
    Label23: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure hesapla;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
    if Edit1.Text <> '' then
  begin
  hesapla;

  end;
end;

procedure TForm4.hesapla;
var
  adet, exw, fob, cfr, cif, kont: Integer;
begin
    if Edit2.Text <> '' then
    begin
    // Edit7'nin i�eri�ini Integer'a �evir
    adet:= StrToInt(Edit2.Text);
    exw := StrToInt(Edit1.Text) *adet ;
    end
    else
    begin
       adet:= 1;
       exw :=  StrToInt(Edit1.Text);
    end;
    if Edit7.Text = '' then
    begin
     kont:=1;
    end
    else
    begin
    kont:= StrToInt(Edit7.Text);
    end;

    // Di�er hesaplamalar� yapabilirsiniz
    if (Edit3.Text <> '') and (Edit4.Text <> '') then
    begin
    fob := exw + kont*(StrToInt(Edit3.Text) + StrToInt(Edit4.Text)) ;
    end;
    if (Edit3.Text <> '') and (Edit4.Text <> '') and (Edit5.Text <> '') then
    begin
    cfr := exw + kont*(StrToInt(Edit3.Text) + StrToInt(Edit4.Text) + StrToInt(Edit5.Text));
    end;
    if (Edit3.Text <> '') and (Edit4.Text <> '') and (Edit5.Text <> '') and (Edit6.Text <> '') then
    begin
    cif := exw + kont*(StrToInt(Edit3.Text) + StrToInt(Edit4.Text) + StrToInt(Edit5.Text) + StrToInt(Edit6.Text));
    end;

    // Sonu�lar� ilgili etiketlerin Caption'lar�na ata
    Label13.Caption := IntToStr(exw);
    Label14.Caption := IntToStr(fob);
    Label15.Caption := IntToStr(cfr);
    Label16.Caption := IntToStr(cif);
    Label17.Caption := FloatToStr(exw/adet);
    Label18.Caption := FloatToStr(fob/adet);
    Label19.Caption := FloatToStr(cfr/adet);
    Label20.Caption := FloatToStr(cif/adet);

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  if Button2.Caption='Turkish' then
  begin
      Label7.Caption:= 'Paketleme';
      Label1.Caption:= '�r�n Adedi';
      Label2.Caption:= '�n ta��ma (i� nakliye)';
      Label3.Caption:= 'Ana ta��ma arac�na y�kleme';
      Label4.Caption:= 'Ana ula��m';
      Label5.Caption:= 'Ula��m sigortas�';
      Label8.Caption:= 'Birden Fazla ise Konteyner adedi';

      Label21.Caption:= 'Toplam Maliyet';
      Label6.Caption:=  '�r�n ba�� Maliyet';

      Panel3.Caption:= 'Hesapla';

      Label22.Caption:= '�cretler';

      Button2.Caption:= 'English';

      Panel4.Caption:= 'Onaylanm�� bir proje de�ildir, ticari faaliyetlerde kullan�lmas� tavsiye edilmez.';
  end
  else
  begin
      Label7.Caption:= 'Packaging';
      Label1.Caption:= 'Number of Products';
      Label2.Caption:= 'Pre-Carriage (Inland Transportation)';
      Label3.Caption:= 'Loading onto the Main Transport vehicle';
      Label4.Caption:= 'Main Transportation';
      Label5.Caption:= 'Transport Insurance';
      Label8.Caption:= 'Number of Containers if more than one';

      Label21.Caption:= 'Total Cost';
      Label6.Caption:= 'Cost per Product';

      Panel3.Caption:= 'Calculate';

      Label22.Caption:= 'Payments';

      Button2.Caption:= 'Turkish';

      Panel4.Caption:= 'It is not an approved project, it is not recommended to use it in commercial activities.';

  end;
end;

end.

