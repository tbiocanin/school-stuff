unit functions;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
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


end.

