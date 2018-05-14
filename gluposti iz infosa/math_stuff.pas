unit math_stuff;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

function fact(input : integer) : integer;
var i, faktorijel : integer;
begin
  faktorijel := 1;
  for i := 1 to input do
      faktorijel := faktorijel * i;
end;

procedure TForm2.Button1Click(Sender: TObject);
var input1, faktorijel : integer;
begin
     input1 := StrToInt(Edit1.Text);
     faktorijel := fact(input1);
     showMessage(IntToStr(faktorijel));
end;

end.
