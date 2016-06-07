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
    Timer1: TTimer;
    cal1: TMonthCalendar;
    dbgrd1: TDBGrid;
    N3: TMenuItem;
    N4: TMenuItem;
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    btn_add: TBitBtn;
    btn_delete: TBitBtn;
    btn_edit: TBitBtn;
    btn_tomorrow: TBitBtn;
    N2: TMenuItem;
    btn_today: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure cal1Click(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_tomorrowClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure btn_todayClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Form1.Caption:='NotS - '+TimeToStr(now);
end;


procedure TForm1.cal1Click(Sender: TObject);
begin
 if N4.Checked then  //коли увімкнений фільрт філтруємо по даті відповідно до календаря
begin
qry1.Filter := 'Дата = ' + QuotedStr(datetostr(cal1.date));
qry1.Filtered :=true;
end
else
qry1.Filtered :=false;
end;

procedure TForm1.btn_addClick(Sender: TObject);
begin
  Form3.Show;
  qry1.Insert;
end;



procedure TForm1.btn_tomorrowClick(Sender: TObject);
begin
qry1.Filter:= 'Дата = ' + QuotedStr(DateToStr(Date()+1));
qry1.Filtered :=true;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
qry1.Filter:= 'Дата = ' + QuotedStr(DateToStr(Date()));
qry1.Filtered :=true;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
dbgrd1.DataSource.DataSet.Delete; //видалення всіх записів
end;

procedure TForm1.btn_editClick(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.btn_deleteClick(Sender: TObject);
begin
qry1.Delete;
end;

procedure TForm1.btn_todayClick(Sender: TObject);
begin
qry1.Filter:= 'Дата = ' + QuotedStr(DateToStr(Date()));
qry1.Filtered :=true;
end;

end.
