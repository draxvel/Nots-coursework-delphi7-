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
    ds1: TDataSource;
    btn_add: TBitBtn;
    btn_delete: TBitBtn;
    btn_edit: TBitBtn;
    btn_tomorrow: TBitBtn;
    N2: TMenuItem;
    btn_today: TBitBtn;
    qry1: TADOQuery;
    procedure Timer1Timer(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_tomorrowClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure btn_todayClick(Sender: TObject);
    procedure cal1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
qry1.Filter:= '���� = ' + QuotedStr(DateToStr(Date())); //��� ������ ��������
qry1.Filtered :=true;       //���������� ������ ����� �� �������
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Form1.Caption:='Busy Diary - '+TimeToStr(now); //���� ����� ��������, � ����� ���� (��� ��������)
end;

procedure TForm1.N2Click(Sender: TObject);
begin
dbgrd1.DataSource.DataSet.Delete; //��������� ������
end;

procedure TForm1.N1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm1.btn_addClick(Sender: TObject);
begin
  Form3.ShowModal; //������� ����� ��� ����� ���� �������
  qry1.Insert;    //�������� �������� ��� � �������
end;

procedure TForm1.btn_todayClick(Sender: TObject);
begin
qry1.Filter:= '���� = ' + QuotedStr(DateToStr(Date())); //���������� ������
qry1.Filtered :=true;                                   //�� ���������� ���
end;


procedure TForm1.btn_tomorrowClick(Sender: TObject);
begin
qry1.Filter:= '���� = ' + QuotedStr(DateToStr(Date()+1)); //���������� ������,
qry1.Filtered :=true; //����������� ���� ������ �� ������� �� ������
end;

procedure TForm1.btn_editClick(Sender: TObject);
begin
Form3.ShowModal;//������� ���� ��� �����������
end;

procedure TForm1.btn_deleteClick(Sender: TObject);
begin
qry1.Delete; //�������� ���� �����
end;

procedure TForm1.cal1Click(Sender: TObject);
begin
if N4.Checked then  //���� ��������� ������ �������� �� ��� �������� �� ���������
begin
qry1.Filter := '���� = ' + QuotedStr(datetostr(cal1.date));
qry1.Filtered :=true;
end
else
qry1.Filtered :=false;
end;

end.
