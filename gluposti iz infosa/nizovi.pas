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
    Edit1: TEdit;
    ListBox1: TListBox;
    ListBox2: TListBox;
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
begin

end;

end.

