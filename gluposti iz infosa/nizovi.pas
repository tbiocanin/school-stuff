unit nizovi;

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
    ListBox1: TListBox;
    ListBox2: TListBox;
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

procedure TForm1.Button1Click(Sender: TObject);
var n, i, first_digit, last_digit, input, number : integer;
var x : array[1..50] of integer;
begin
  n := StrToInt(Edit1.Text);

  for i := 1 to n do
      begin
        input := strToInt(InputBox('unesi clanove', 'x[' + IntToStr(i) + ']=', ''));
        listBox2.Items.Add(IntToStr(x[i]));

        last_digit := input mod 10;
        number := input;
        while input >= 10 do
               begin
                 input := input div 10;
                 first_digit := input;
               end;

        if first_digit = last_digit then ListBox1.Items.Add(IntToStr(number));
      end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var n, i : integer;
var x : array[1..100] of integer;
begin
n := StrTOInt(Edit1.Text);

for i := 1 to n do
    begin
      x[i] := random(100);
      if i mod 2 <> 0 then listBox1.Items.Add('x[' + intToStr(i) + ']=' + IntToStr(x[i]));
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var n, i, s : integer;
var x : array[1..50] of integer;
begin
  n := StrToInt(Edit1.Text);
  s := 0;

  for i := 1 to n do
      begin
        x[i] := random(100)-n;
        listBox1.Items.Add('x[' + intToStr(i) + ']=' + IntToStr(x[i]));
        s := s + x[i];
      end;
  showMessage(IntToStr(s));
end;

procedure TForm1.Button4Click(Sender: TObject);
var n, i, sp, sn : integer;
var x : array[1..200] of integer;
begin
 n := StrToInt(Edit1.Text);
 sp := 0;
 sn := 0;

 for i := 1 to n do
     begin
       x[i] := random(200) - 100;
       listBox1.Items.Add('x[' + intToStr(i) + ']=' + IntToStr(x[i]));

       if x[i] mod 2 = 0 then sp := sp + x[i];
       if x[i] mod 2 <> 0 then sn := sn + x[i];
     end;
  showMessage(IntToStr(sp));
  showMessage(IntToStr(sn));
end;

end.

