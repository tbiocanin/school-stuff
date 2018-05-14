unit functions;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function fact(input : integer) : integer;
var i, faktorijel : integer;
begin
  faktorijel := 1;
  for i := 1 to input do
      faktorijel := faktorijel * i;
end;

procedure TForm1.Button1Click(Sender: TObject);
var input1, faktorijel : integer;
begin
     input1 := StrToInt(Edit1.Text);
     faktorijel := fact(input1);
     showMessage(IntToStr(faktorijel));
end;

function par(n: integer) : integer;
var c, br : integer;
begin
  br := 0;
  while n <> 0 do
        begin
          c := n mod 10;
          if c mod 2 = 0 then
           begin
             br := br + 1;
             //showMessage('broj parnih brojeva je ' + IntToStr(br));
           end;
          n := n div 10;
        end;
  par := br;
end;
procedure TForm1.Button2Click(Sender: TObject);
var input, even_numbers : integer;
begin
  input := StrToInt(Edit1.TExt);
  even_numbers := par(input);
  showMessage(IntToStr(even_numbers));
end;

procedure minmax(input1, input2 : integer; var min, max : integer);
begin
     if input1 > input2 then
      begin
        min := input2;
        max := input1;
      end;
     if input1 < input2 then
      begin
        min := input1;
        max := input2;
      end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var input1, input2, output1, output2 : integer;
begin
     input1 := StrToInt(Edit1.Text);
     input2 := StrToInt(Edit2.Text);

     minmax(input1, input2, output1, output2);

     showMessage('minimum je ' + inttostr(output1) + ' maks je ' + inttostr(output2));
end;

procedure poredak(unos : integer; var novi_br : integer);
var c: integer;
begin
  novi_br := 0;
  while unos <> 0 do
        begin
          c := unos mod 10;
          novi_br  := novi_br*10 + c;
          unos := unos div 10;
        end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var unos, novi_broj : integer;
begin
   unos := StrToInt(Edit1.Text);
   poredak(unos, novi_broj);
   showMessage(IntToStr(novi_broj));
end;


end.

