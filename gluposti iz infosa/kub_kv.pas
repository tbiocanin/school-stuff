unit kub_kv;

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
procedure kvadrat(n, k : integer; var kv : integer);
var i : integer;
  begin
    kv := 0;
    for i := n to k do
        begin
            if i mod 2 = 0 then kv := kv + i*i;
        end;
  end;

procedure kub(n, k : integer; var kub : integer);
var i : integer;
  begin
    kub := 0;
    for i := n to k do
        begin
            if i mod 3 = 0 then kub := kub + i*i*i;
        end;
  end;

procedure TForm1.Button1Click(Sender: TObject);
var input1, input2, output1, output2 : integer;
begin
input1 := StrToInt(Edit1.Text);
input2 := StrToInt(Edit2.Text);

kvadrat(input1, input2, output1);
kub(input1, input2, output2);

showMessage(IntToStr(output2));
showMessage(IntToStr(output1));
end;

end.

