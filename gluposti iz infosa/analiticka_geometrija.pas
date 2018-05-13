unit analiticka_geometrija;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
//function func_name(parameters) : return_type;
function rastojanje(xA, yA, xB, yB: integer) : real;//defined parameters with output
var AB : real; //local variable which is used in the function
begin
AB := sqrt(sqr(xB-xA) + sqr(yB-yA)); //formula from analitic geometry
end;

procedure TForm1.Button1Click(Sender: TObject);
var xA, xB, yA, yB: integer; var AB : real;
begin
     xA := StrToINt(Edit1.Text);
     yA := StrToINt(Edit2.Text);
     xB := StrToINt(Edit3.Text);
     yB := StrToINt(Edit4.Text);

     AB := rastojanje(xA, yA, xB, yB);//function call with the parameters
     showMessage(FloatToStr(AB));
end;

end.

