unit GNP_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Memo1: TMemo;
    Label3: TLabel;
    Edit3: TEdit;
    SBCLEAR: TSpeedButton;
    SBCALCOLA: TSpeedButton;
    SBSTOP: TSpeedButton;
    CBENP: TCheckBox;
    LBCNT: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure SBCLEARClick(Sender: TObject);
    procedure SBCALCOLAClick(Sender: TObject);
    procedure SBSTOPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  fStart: Boolean;

implementation

{$R *.dfm}

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
	if Key = #8 then
    else begin

		if ((Key < '0') or (Key > '9') ) then
     		Key:=Chr(0);

    end;
end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
	if Key = #8 then
    else begin

		if ((Key < '0') or (Key > '9') ) then
     		Key:=Chr(0);

    end;

end;

procedure TForm2.SBCLEARClick(Sender: TObject);
begin
	Memo1.Clear;
end;

// CALCOLA
procedure TForm2.SBCALCOLAClick(Sender: TObject);
var
tini,tend: TTime;
nini,nprimi,maxore,cnt,i: integer;
dmaxore,dnite: double;
deltat,snite: string;
fl: boolean;
nite: integer;
begin
    tini:=Now;

    SBCALCOLA.Enabled:=False;
    SBSTOP.Enabled:=True;
    fStart:=True;
	Memo1.Clear;
    cnt:=0; nite:=0;
    Edit3.Text:='attendi...';
    nini:=StrToInt(Edit1.Text);
    nprimi:= StrToInt(Edit2.Text);
    LBCNT.Caption:='0';
    while (cnt < nprimi) do begin
    	if fStart then begin
        	if nini mod 2 <> 0 then begin
            	Inc(nite);
            	// loop divisione
                dmaxore:= Sqrt(nini)+1;
                maxore:= Round(dmaxore);
                fl:=True;
                i:=3;
                while (i < maxore) do begin
               
                	if nini mod i = 0 then begin
                    	fl:=False;
                    	Break;
                    end;
                    i:=i+2;
                    Inc(nite);
                end;
                if fl = True then begin
                    // primo
                    Inc(cnt);
                    LBCNT.Caption := IntToStr(cnt);
                    if CBENP.Checked then
                    	Memo1.Lines.Add(IntToStr(nini));
                end;
                Inc(nini);
            end
            else begin
                // divisibile per 2 = non primo
                Inc(nini);
            end;
        end
        else begin
        	// abort
            Memo1.Lines.Add('Fermato dall''operatore');
            Break;
        end;
    end;
    tend:= Now;
    deltat:= FormatDateTime('nn:ss,zzz',tend - tini);
    Memo1.Lines.Add('-------------');
    Memo1.Lines.Add('Tempo mm:ss,ms : ' + deltat);
    dnite:=nite;
    snite:= Format('# iterazioni: %12.0n',[dnite]);
    Memo1.Lines.Add(snite);
    Edit3.Text:= deltat;
    Edit4.Text:= snite;
    SBCALCOLA.Enabled:=True;
    SBSTOP.Enabled:=False;


end;

// TASTO STOP
procedure TForm2.SBSTOPClick(Sender: TObject);
begin
	fStart:=False;
  
end;

end.
