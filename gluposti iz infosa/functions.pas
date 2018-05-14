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
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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


end.

