unit Flogin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
uses unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Label1Click(Sender: TObject);
begin

end;

procedure TForm2.Edit2Change(Sender: TObject);
begin

end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.FormShow(Sender: TObject);
begin

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Halt;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form1.MySQL57Connection1.DatabaseName := 'world';
Form1.MySQL57Connection1.UserName := Edit1.text;
Form1.MySQL57Connection1.Password := Edit2.text;
Form1.MySQL57Connection1.HostName := 'localhost';
Form1.MySQL57Connection1.CharSet := 'UTF8';
Form1.MySQL57Connection1.Port := 3306;
Form1.MySQL57Connection1.SkipLibraryVersionCheck := True;
Form1.MySQL57Connection1.Transaction := Form1.SQLTransaction1;
try
Form1.MySQL57Connection1.Open;
Form1.SQLTransaction1.Active := True;
Form1.Visible:= True;
Form2.Hide;

except
ShowMessage('Ошибка подключения к базе!');
end;
end;

end.
