unit Unit1;

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
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
var br, input, c: integer;
begin

    input := StrToInt(Edit1.Text);
    br := 0;
    c := 0;
    while input <> 0 do
          begin
            c := input mod 10;
            if c mod 3 <> 0 then br := br + 1;
            input := input div 10;
            //Edit2.Text := IntToStr(br);
          end;
    Edit2.Text := IntToStr(br);
end;

procedure TForm1.Button2Click(Sender: TObject);
var input, c, new_num: integer;
begin
     input := StrToInt(Edit1.Text);
     c := 0;
     new_num := 0;
     while input <> 0 do
           begin
                c := input mod 10;
                input := input div 10;
                new_num := new_num*10 + c;
                Edit2.Text := IntToStr(new_num);
           end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var proiz_cifara, input, min, max, c: integer;
begin
     input := StrToInt(Edit1.Text);
     max := 0;
     min := 9;
     c := 0;
     proiz_cifara := 1;
     repeat
           c := input mod 10;
           proiz_cifara := proiz_cifara * c;

           if input mod proiz_cifara = 0 then Edit2.Text := IntToStr(input)
           else ShowMessage('nije deljiv');
           if c > max then max := c;
           if c < min then min := c;

           input := input div 10;

     until input = 0;
     ShowMessage('maximum je: ' + IntToStr(max) + ' minimum je ' + IntToStr(min))
end;

procedure TForm1.Button4Click(Sender: TObject);
var input, c, par, nepar: integer;
begin
     c := 0;
     par := 0;
     nepar := 0;
     input := StrToInt(Edit1.Text);
     repeat
           c := input mod 10;
           if c mod 2 = 0
              then par := par + 1
           else
               nepar := nepar + 1;
           input := input div 10;
     until input = 0;
     ShowMessage('parnih brojeva ima ' + IntToStr(par) + ' a neparnih ' + IntToStr(nepar));
end;

procedure TForm1.Button5Click(Sender: TObject);
var input, c, br, zbir_parnih_kvadrata: integer;
begin
  input := 2;
  c := 0;
  br := 1;
  zbir_parnih_kvadrata := 0;

  while zbir_parnih_kvadrata < 100000 do
        begin
          //c := input mod 10;
          //if c mod 2 = 0 then
             //begin
               zbir_parnih_kvadrata := zbir_parnih_kvadrata + sqr(input);
               br := br + 1;
               input := input + 2;
               Memo1.Lines.Add(IntToStr(zbir_parnih_kvadrata));
               Edit2.Text := inttostr(br);
             //end;
        end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var epsilon, m, stepen, n, z: integer;
var suma, clan: real;
begin
  epsilon := StrToInt(Edit1.Text);
  m := StrToInt(Edit2.Text);
  stepen := 1;
  n := 1;
  z := -1;
  suma := 0;
  repeat
      stepen := stepen * m;
      clan := 1/(stepen+n);
      suma := suma + z*clan;
      z := -z;
      Memo1.Lines.Add(FloatToStr(suma));
  until abs(clan) < epsilon ;

end;

end.

