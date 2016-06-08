unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    lbl3: TLabel;
    edt2: TEdit;
    btn1: TBitBtn;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    
    procedure edt1Change(Sender: TObject);
    procedure lbl2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt2Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

var
F:TextFile;
password:string;

procedure TForm2.FormCreate(Sender: TObject);
begin
AssignFile(F,'password.txt'); //приєднюємо файл, який містить пароль
Reset (F);  //відкриваємо і зчитуємо
Readln(F,password);
Closefile (F);
end;

procedure TForm2.edt1Change(Sender: TObject);
begin
if edt1.Text= password then //якщо введений та існуючий паролі збігаються - доступ дозволено
begin
Form1.Show;
Form2.Hide;
end;
end;

procedure TForm2.lbl2Click(Sender: TObject);
begin
edt2.Visible:=True; //якщо користувач хоче створити новий пароль
btn1.visible:=True;
lbl5.visible:=True;
ActiveControl:=edt2;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  password:=edt2.Text;
  Rewrite (F);
  Writeln (F,password); //записуємо в змінну новий пароль
  Closefile (F);
edt2.Visible:=false;
btn1.visible:=false;
lbl5.visible:=false;
end;

procedure TForm2.edt2Change(Sender: TObject);
begin
 if edt2.Text <>'' then btn1.Enabled:=True;
end;

end.
