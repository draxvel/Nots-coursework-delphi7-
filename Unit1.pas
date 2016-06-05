unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Menus, ExtCtrls, IniFiles, Buttons, DB,
  ADODB, Mask, DBCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Timer1: TTimer;
    btn1: TBitBtn;
    cal1: TMonthCalendar;
    con1: TADOConnection;
    btn3: TButton;
    dbedt3: TDBEdit;
    dbgrd1: TDBGrid;
    N3: TMenuItem;
    N4: TMenuItem;
    dtp1: TDateTimePicker;
    chk1: TCheckBox;
    dbedt2: TDBEdit;
    dbredt1: TDBRichEdit;
    ds1: TDataSource;
    qry1: TADOQuery;
    procedure Timer1Timer(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cal1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtp1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

uses Unit2;

{$R *.dfm}
     var d:Tdate;
     filter:Boolean;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Form1.Caption:='NotS - '+TimeToStr(now);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
dtp1.Format := 'HH:mm';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
qry1.Delete;
end;


procedure TForm1.chk1Click(Sender: TObject);
begin
if chk1.Checked then dtp1.Enabled:=true
else  dtp1.Enabled:=false;
end;


procedure TForm1.btn1Click(Sender: TObject);
begin
  if dbredt1.text<>'' then
  begin
  qry1.Insert; //додаємо значення в таблицю
  end
else  showmessage('Введіть тест нотатки');

qry1.Sort:='[Дата]';
qry1.Sort:='[Час]';


end;

procedure TForm1.cal1Click(Sender: TObject);
begin
  dbedt3.Text:=datetostr(cal1.Date);

 if N4.Checked then  //коли увімкнений фільрт філтруємо по даті відповідно до календаря
begin
qry1.Filtered :=true;
qry1.Filter := 'Дата = ' + QuotedStr(datetostr(d));
end
else
begin
qry1.Filtered :=false;
end;
end;


procedure TForm1.dtp1Change(Sender: TObject);
begin
dbedt2.text:= TimeToStr(dtp1.Time);
end;

end.
