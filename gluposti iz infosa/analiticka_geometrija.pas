unit analiticka_geometrija;

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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
function rastojanje(x1, y1, x2, y2: integer) : real;//defined parameters with output
var udaljenost_tacaka : real; //local variable which is used in the function
begin
udaljenost_tacaka := sqrt(sqr(x2-x1) + sqr(y2-y1)); //formula from analitic geometry
end;

function povrsina(a, b, c: real) : real;
var s, _povrsina : real;
begin
     s := (a+b+c)/2;
     _povrsina := sqrt(s*(s-a)*(s-b)*(s-c));
end;
procedure TForm1.Button1Click(Sender: TObject);
var xA, xB, yA, yB, xC, yC: integer; var AB, AC, BC, povrsina_ : real;
begin
     xA := StrToINt(Edit1.Text);
     yA := StrToINt(Edit2.Text);
     xB := StrToINt(Edit3.Text);
     yB := StrToINt(Edit4.Text);
     xC := StrToINT(Edit5.Text);
     yC := StrToInt(Edit6.Text);

     AB := rastojanje(xA, yA, xB, yB);//function call with the parameters
     AC := rastojanje(xA, yA, xC, yC);
     BC := rastojanje(xB, yB, xC, yC);

     povrsina_ := povrsina(AB,AC,BC);

     showMessage(FloatToStr(AB));
     showMEssage(FloatToStr(AC));
     showMessage(FloatToStr(BC));
     Edit7.Text := FloatToStr(povrsina_);
end;

end.

