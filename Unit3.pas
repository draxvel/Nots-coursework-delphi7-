unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Mask, DBCtrls;

type
  TForm3 = class(TForm)
    btn1_ok: TBitBtn;
    btn1_cancel: TBitBtn;
    dtp1: TDateTimePicker;
    chk1: TCheckBox;
    dbedt_time: TDBEdit;
    dbredt_note: TDBRichEdit;
    dtp2: TDateTimePicker;
    dbedt1: TDBEdit;
    procedure btn1_okClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure btn1_cancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.btn1_okClick(Sender: TObject);
begin
dbedt1.Text:=DateToStr(dtp2.date);

if dtp1.Enabled then  //запис часу
dbedt_time.text:= TimeToStr(dtp1.Time);

  if dbredt_note.Text='' then //перевіряється чи користувач ввів текст нотатки
  ShowMessage('Введіть нотатку')
  else
  begin
  Form1.qry1.Post;
  Form1.qry1.Sort:='[Дата]'; //сортування в таблиці за датою і часом
  Form1.qry1.Sort:='[Час]';
  close;
end;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
dtp1.Format := 'HH:mm';
end;

procedure TForm3.chk1Click(Sender: TObject);
begin
if chk1.Checked then dtp1.Enabled:=true
else
begin
dtp1.Enabled:=false;
dbedt_time.Clear;
end;
end;

procedure TForm3.btn1_cancelClick(Sender: TObject);
begin
Close;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
btn1_ok.ModalResult:=mrOk;
btn1_cancel.ModalResult:=mrCancel;
end;

end.
