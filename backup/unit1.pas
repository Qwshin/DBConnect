unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql57conn, sqldb, db, Forms, Controls, Graphics, Dialogs,
  StdCtrls, DBGrids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    ComboBox1: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    ComboBox16: TComboBox;
    ComboBox17: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListBox1: TListBox;
    MySQL57Connection1: TMySQL57Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ListBox1SelectionChange(Sender: TObject; User: boolean);
  private

  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin

MySQL57Connection1.Connected:=true; //connect to DB

SQLQuery1.Close;               //get list of tables
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('SHOW tables IN world');
SQLQuery1.Open;
ListBox1.Items.Clear;
While not SQLQuery1.Eof do
begin
ListBox1.Items.Add(SQLQuery1.Fields[0].AsString);
SQLQuery1.Next;
end;
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
//select name from city where  name = 'Kabul';
SQLQuery1.Close;               //формирование запроса
SQLQuery1.SQL.Clear;

if combobox2.text = 'Name' then //начало кода выборки по имени
SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

                                  //добавим второе поле ЕСЛИ!!!! оно не пустое
if (combobox3.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox3.text);

   end;
if (combobox4.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox4.text);

   end;
if (combobox5.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox5.text);

   end;
if (combobox6.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox6.text);

   end;
if (combobox7.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox7.text);

   end;
if (combobox8.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox8.text);

   end;
if (combobox9.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox9.text);

   end;
if (combobox10.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox10.text);

   end;
if (combobox11.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox11.text);

   end;
if (combobox12.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox12.text);

   end;
if (combobox13.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox13.text);

   end;
if (combobox14.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox14.text);

   end;
if (combobox15.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox15.text);

   end;
if (combobox16.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox16.text);

   end;
if (combobox17.text <> '') then
   begin
      SQLQuery1.SQL.Add(',' + combobox17.text);

   end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox1.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit2.text+'"');   // конец выборки кода  по имени

if combobox2.text = 'Population' then     //начало кода выборки по численности
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' > ');

SQLQuery1.SQL.Add('"'+edit1.text+'"');
end;                                   //конец выборки чилсенности

if combobox2.text = 'CountryCode' then  //начало кода страны(city)
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit2.text+'"');
end;                                     //конец кода страны

if combobox2.text = 'District' then  //начало кода выбора округа
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit2.text+'"');
end;                                   //конец кода округа

if combobox2.text = 'Code' then  //начало кода страны(country)
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit2.text+'"');
end;                                     //конец кода страны

if combobox2.text = 'Continent' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit2.text+'"');
end;

if combobox2.text = 'Region' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit2.text+'"');
end;

if combobox2.text = 'SurfaceArea' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then

begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' > ');

SQLQuery1.SQL.Add('"'+edit1.text+'"');
end;
if combobox2.text = 'IndepYear' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit1.text+'"');
end;
if combobox2.text = 'LifeExpectancy' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;

if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' > ');

SQLQuery1.SQL.Add('"'+edit1.text+'"');
end;
if combobox2.text = 'GNP' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' > ');

SQLQuery1.SQL.Add('"'+edit1.text+'"');
end;
if combobox2.text = 'GNPOld' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' > ');

SQLQuery1.SQL.Add('"'+edit1.text+'"');
end;
if combobox2.text = 'LocalName' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit2.text+'"');
end;
if combobox2.text = 'GovernmentForm' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit2.text+'"');
end;
if combobox2.text = 'HeadOfState' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if

(combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit2.text+'"');
end;
if combobox2.text = 'Capital' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' > ');

SQLQuery1.SQL.Add('"'+edit1.text+'"');
end;
if combobox2.text = 'Code2' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' +combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit1.text+'"');
end;
if combobox2.text = 'IsOfficial' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit2.text+'"');
end;
if combobox2.text = 'Percentage' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' > ');

SQLQuery1.SQL.Add('"'+edit1.text+'"');
end;
if combobox2.text = 'Language' then
begin

SQLQuery1.SQL.Text := 'select ';

SQLQuery1.SQL.Add(combobox1.text);

if (combobox3.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox3.text);

end;
if (combobox4.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox4.text);

end;
if (combobox5.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox5.text);

end;
if (combobox6.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox6.text);

end;
if (combobox7.text <> '') then

begin
SQLQuery1.SQL.Add(',' + combobox7.text);

end;
if (combobox8.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox8.text);

end;
if (combobox9.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox9.text);

end;
if (combobox10.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox10.text);

end;
if (combobox11.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox11.text);

end;
if (combobox12.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox12.text);

end;
if (combobox13.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox13.text);

end;
if (combobox14.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox14.text);

end;
if (combobox15.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox15.text);

end;
if (combobox16.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox16.text);

end;
if (combobox17.text <> '') then
begin
SQLQuery1.SQL.Add(',' + combobox17.text);

end;

SQLQuery1.SQL.Add(' from ');

SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

SQLQuery1.SQL.Add(' where ');

SQLQuery1.SQL.Add(combobox2.text);

SQLQuery1.SQL.Add(' = ');

SQLQuery1.SQL.Add('"'+edit2.text+'"');
end;



MySQL57Connection1.Connected:= True;
SQLTransaction1.Active:= True;
SQLQuery1.Open;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Halt;
end;
procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  if combobox2.text = 'Name' then
  begin
   Edit1.Visible:=false;
   Edit2.Visible:=true;
  end;
   if combobox2.text = 'Population' then
   begin
   Edit2.Visible:=false;
   Edit1.Visible:=true;
   end;
   if combobox2.text = 'District' then
   begin
   Edit1.Visible:=false;
   Edit2.Visible:=true;
   end;
   if combobox2.text = 'CountryCode' then
   begin
   Edit1.Visible:=false;
   Edit2.Visible:=true;
   end;
   if combobox2.text = 'Code' then
   begin
   Edit1.Visible:=false;
   Edit2.Visible:=true;
   end;
   if combobox2.text = 'ID' then
   begin
   Edit2.Visible:=false;
   Edit1.Visible:=true;
   end;
   if combobox2.text = 'Continent' then
  begin
   Edit1.Visible:=false;
   Edit2.Visible:=true;
  end;
   if combobox2.text = 'Region' then
  begin
   Edit1.Visible:=false;
   Edit2.Visible:=true;
  end;
   if combobox2.text = 'SurfaceArea' then
  begin
   Edit2.Visible:=false;
   Edit1.Visible:=true;
  end;
   if combobox2.text = 'IndepYear' then
  begin
   Edit2.Visible:=false;
   Edit1.Visible:=true;
  end;if combobox2.text = 'LifeExpectancy' then
  begin
   Edit2.Visible:=false;
   Edit1.Visible:=true;
  end;
  if combobox2.text = 'GNP' then
  begin
   Edit2.Visible:=false;
   Edit1.Visible:=true;
  end;
  if combobox2.text = 'GNPOld' then
  begin
   Edit2.Visible:=false;
   Edit1.Visible:=true;
  end;
  if combobox2.text = 'LocalName' then
  begin
   Edit1.Visible:=false;
   Edit2.Visible:=true;
  end;
  if combobox2.text = 'GovernmentForm' then
  begin
   Edit1.Visible:=false;
   Edit2.Visible:=true;
  end;
  if combobox2.text = 'HeadOfState' then
    begin
     Edit1.Visible:=false;
     Edit2.Visible:=true;
    end;
  if combobox2.text = 'Capital' then
  begin
   Edit2.Visible:=false;
   Edit1.Visible:=true;
  end;
  if combobox2.text = 'Language' then
  begin
   Edit1.Visible:=false;
   Edit2.Visible:=true;
  end;
  if combobox2.text = 'IsOfficial' then
  begin
   Edit1.Visible:=false;
   Edit2.Visible:=true;
  end;
  if combobox2.text = 'Percentage' then
  begin
   Edit2.Visible:=false;
   Edit1.Visible:=true;
  end;

end;
procedure TForm1.ListBox1SelectionChange(Sender: TObject; User: boolean);
begin
SQLQuery1.Close;               //get content of a table
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Text := 'select * from ';
SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);
MySQL57Connection1.Connected:= True;
SQLTransaction1.Active:= True;
SQLQuery1.Open;

SQLQuery1.Close;               //заполнить оба три комбобокса
SQLQuery1.SQL.Clear;
ComboBox1.Items.Clear;
ComboBox2.Items.Clear;
ComboBox3.Items.Clear;
ComboBox4.Items.Clear;
ComboBox5.Items.Clear;
ComboBox6.Items.Clear;
ComboBox7.Items.Clear;
ComboBox8.Items.Clear;
ComboBox9.Items.Clear;
ComboBox10.Items.Clear;
ComboBox11.Items.Clear;
ComboBox12.Items.Clear;
ComboBox13.Items.Clear;
ComboBox14.Items.Clear;
ComboBox15.Items.Clear;
ComboBox16.Items.Clear;
ComboBox17.Items.Clear;
SQLQuery1.SQL.Text := 'show columns from ';
SQLQuery1.SQL.Add(listbox1.Items[listbox1.ItemIndex]);

MySQL57Connection1.Connected:= True;
SQLTransaction1.Active:= True;
SQLQuery1.Open;
While not SQLQuery1.Eof do
begin
ComboBox1.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox2.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox3.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox4.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox5.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox6.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox7.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox8.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox9.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox10.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox11.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox12.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox13.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox14.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox15.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox16.Items.Add(SQLQuery1.Fields[0].AsString);
ComboBox17.Items.Add(SQLQuery1.Fields[0].AsString);
SQLQuery1.Next;
end;
//играемся с видимостью
 if listbox1.Items[listbox1.ItemIndex] = 'country' then
    begin
      combobox3.Visible:=true;
      combobox4.Visible:=true;
      combobox5.Visible:=true;
      combobox6.Visible:=true;
      combobox7.Visible:=true;
      combobox8.Visible:=true;
      combobox9.Visible:=true;
      combobox10.Visible:=true;
      combobox11.Visible:=true;
      combobox12.Visible:=true;
      combobox13.Visible:=true;
      combobox14.Visible:=true;
      combobox15.Visible:=true;
      combobox16.Visible:=true;
      combobox17.Visible:=true;
      label4.Visible:=true;
      label5.Visible:=true;
      label6.Visible:=true;
      label7.Visible:=true;
      label8.Visible:=true;
      label9.Visible:=true;
      label10.Visible:=true;
      label11.Visible:=true;
      label13.Visible:=true;
      label14.Visible:=true;
      label15.Visible:=true;
      label16.Visible:=true;
      label17.Visible:=true;
      label18.Visible:=true;
      label19.Visible:=true;
    end;
  if listbox1.Items[listbox1.ItemIndex] = 'city' then
    begin
      combobox3.Visible:=true;
      combobox4.Visible:=true;
      combobox5.Visible:=true;
      combobox6.Visible:=false;
      combobox7.Visible:=false;
      combobox8.Visible:=false;
      combobox9.Visible:=false;
      combobox10.Visible:=false;
      combobox11.Visible:=false;
      combobox12.Visible:=false;
      combobox13.Visible:=false;
      combobox14.Visible:=false;
      combobox15.Visible:=false;
      combobox16.Visible:=false;
      combobox17.Visible:=false;
      label4.Visible:=true;
      label5.Visible:=true;
      label6.Visible:=true;
      label7.Visible:=false;
      label8.Visible:=false;
      label9.Visible:=false;
      label10.Visible:=false;
      label11.Visible:=false;
      label13.Visible:=false;
      label14.Visible:=false;
      label15.Visible:=false;
      label16.Visible:=false;
      label17.Visible:=false;
      label18.Visible:=false;
      label19.Visible:=false;

    end;
 if listbox1.Items[listbox1.ItemIndex] = 'countrylanguage' then
    begin
      combobox3.Visible:=true;
      combobox4.Visible:=true;
      combobox5.Visible:=true;
      combobox6.Visible:=false;
      combobox7.Visible:=false;
      combobox8.Visible:=false;
      combobox9.Visible:=false;
      combobox10.Visible:=false;
      combobox11.Visible:=false;
      combobox12.Visible:=false;
      combobox13.Visible:=false;
      combobox14.Visible:=false;
      combobox15.Visible:=false;
      combobox16.Visible:=false;
      combobox17.Visible:=false;
      label4.Visible:=true;
      label5.Visible:=true;
      label6.Visible:=true;
      label7.Visible:=false;
      label8.Visible:=false;
      label9.Visible:=false;
      label10.Visible:=false;
      label11.Visible:=false;
      label13.Visible:=false;
      label14.Visible:=false;
      label15.Visible:=false;
      label16.Visible:=false;
      label17.Visible:=false;
      label18.Visible:=false;
      label19.Visible:=false;

    end;
end;

end.

