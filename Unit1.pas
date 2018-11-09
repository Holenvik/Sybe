unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, XPMan, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, xmldom, XMLIntf,
  msxmldom, XMLDoc, Menus;

type

  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    IdHTTP1: TIdHTTP;
    XMLDocument1: TXMLDocument;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Image8: TImage;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure N5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses Unit2, Unit4, Unit3;



{$R *.dfm}

procedure TForm1.Image2Click(Sender: TObject);
var
i:integer;//Индекс тегов Currency в документе XML.
begin
xmldocument1.Active:=false;//Деактивируем документ XML.
//Устанавливаем имитацию Яндекс.Браузера, который может загрузить страницу с курсами.
IdHTTP1.Request.UserAgent:='Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 YaBrowser/16.2.0.3539 Yowser/2.5 Safari/537.36';
//Загружаем страницу с курсами в документ XML.
xmldocument1.XML.Text:=idhttp1.Get('http://www.nbrb.by/Services/XmlExRates.aspx?ondate');
xmldocument1.Active:=true;//Активируем документ XML.
//Индекс i меняется от 0 до количества тегов Currency - 1.
for i:=0 to xmldocument1.DocumentElement.ChildNodes.Count-1 do
//Если дочерний тег Name i-ого тега Currency равен "Доллар США", то:
if xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Name'].Text='Российский рубль' then
begin
//Помещаем в поле edit1 текст тега Rate i-ого тега Currency.
edit1.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
edit2.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
exit;//Выходим из обработчика события нажатия на кнопку.
end;
end;

procedure TForm1.Image3Click(Sender: TObject);
var
i:integer;//Индекс тегов Currency в документе XML.
begin
xmldocument1.Active:=false;//Деактивируем документ XML.
//Устанавливаем имитацию Яндекс.Браузера, который может загрузить страницу с курсами.
IdHTTP1.Request.UserAgent:='Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 YaBrowser/16.2.0.3539 Yowser/2.5 Safari/537.36';
//Загружаем страницу с курсами в документ XML.
xmldocument1.XML.Text:=idhttp1.Get('http://www.nbrb.by/Services/XmlExRates.aspx?ondate');
xmldocument1.Active:=true;//Активируем документ XML.
//Индекс i меняется от 0 до количества тегов Currency - 1.
for i:=0 to xmldocument1.DocumentElement.ChildNodes.Count-1 do
//Если дочерний тег Name i-ого тега Currency равен "Доллар США", то:
if xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Name'].Text='Швейцарский франк' then
begin
//Помещаем в поле edit1 текст тега Rate i-ого тега Currency.
edit1.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
edit2.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
exit;//Выходим из обработчика события нажатия на кнопку.
end;
end;


procedure TForm1.Image4Click(Sender: TObject);
var
i:integer;//Индекс тегов Currency в документе XML.
begin
xmldocument1.Active:=false;//Деактивируем документ XML.
//Устанавливаем имитацию Яндекс.Браузера, который может загрузить страницу с курсами.
IdHTTP1.Request.UserAgent:='Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 YaBrowser/16.2.0.3539 Yowser/2.5 Safari/537.36';
//Загружаем страницу с курсами в документ XML.
xmldocument1.XML.Text:=idhttp1.Get('http://www.nbrb.by/Services/XmlExRates.aspx?ondate');
xmldocument1.Active:=true;//Активируем документ XML.
//Индекс i меняется от 0 до количества тегов Currency - 1.
for i:=0 to xmldocument1.DocumentElement.ChildNodes.Count-1 do
//Если дочерний тег Name i-ого тега Currency равен "Доллар США", то:
if xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Name'].Text='Йена' then
begin
//Помещаем в поле edit1 текст тега Rate i-ого тега Currency.
edit1.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
edit2.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
exit;//Выходим из обработчика события нажатия на кнопку.
end;
end;



procedure TForm1.Image5Click(Sender: TObject);
var
i:integer;//Индекс тегов Currency в документе XML.
begin
xmldocument1.Active:=false;//Деактивируем документ XML.
//Устанавливаем имитацию Яндекс.Браузера, который может загрузить страницу с курсами.
IdHTTP1.Request.UserAgent:='Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 YaBrowser/16.2.0.3539 Yowser/2.5 Safari/537.36';
//Загружаем страницу с курсами в документ XML.
xmldocument1.XML.Text:=idhttp1.Get('http://www.nbrb.by/Services/XmlExRates.aspx?ondate');
xmldocument1.Active:=true;//Активируем документ XML.
//Индекс i меняется от 0 до количества тегов Currency - 1.
for i:=0 to xmldocument1.DocumentElement.ChildNodes.Count-1 do
//Если дочерний тег Name i-ого тега Currency равен "Доллар США", то:
if xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Name'].Text='Евро' then
begin
//Помещаем в поле edit1 текст тега Rate i-ого тега Currency.
edit1.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
edit2.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
exit;//Выходим из обработчика события нажатия на кнопку.
end;
end;


procedure TForm1.Image6Click(Sender: TObject);
var
i:integer;//Индекс тегов Currency в документе XML.
begin
xmldocument1.Active:=false;//Деактивируем документ XML.
//Устанавливаем имитацию Яндекс.Браузера, который может загрузить страницу с курсами.
IdHTTP1.Request.UserAgent:='Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 YaBrowser/16.2.0.3539 Yowser/2.5 Safari/537.36';
//Загружаем страницу с курсами в документ XML.
xmldocument1.XML.Text:=idhttp1.Get('http://www.nbrb.by/Services/XmlExRates.aspx?ondate');
xmldocument1.Active:=true;//Активируем документ XML.
//Индекс i меняется от 0 до количества тегов Currency - 1.
for i:=0 to xmldocument1.DocumentElement.ChildNodes.Count-1 do
//Если дочерний тег Name i-ого тега Currency равен "Доллар США", то:
if xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Name'].Text='Доллар США' then
begin
//Помещаем в поле edit1 текст тега Rate i-ого тега Currency.
edit1.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
edit2.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
exit;//Выходим из обработчика события нажатия на кнопку.
end;
end;

procedure TForm1.Image7Click(Sender: TObject);
var
i:integer;//Индекс тегов Currency в документе XML.
begin
xmldocument1.Active:=false;//Деактивируем документ XML.
//Устанавливаем имитацию Яндекс.Браузера, который может загрузить страницу с курсами.
IdHTTP1.Request.UserAgent:='Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 YaBrowser/16.2.0.3539 Yowser/2.5 Safari/537.36';
//Загружаем страницу с курсами в документ XML.
xmldocument1.XML.Text:=idhttp1.Get('http://www.nbrb.by/Services/XmlExRates.aspx?ondate');
xmldocument1.Active:=true;//Активируем документ XML.
//Индекс i меняется от 0 до количества тегов Currency - 1.
for i:=0 to xmldocument1.DocumentElement.ChildNodes.Count-1 do
//Если дочерний тег Name i-ого тега Currency равен "Доллар США", то:
if xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Name'].Text='Фунт стерлингов' then
begin
//Помещаем в поле edit1 текст тега Rate i-ого тега Currency.
edit1.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
edit2.Text:=xmldocument1.DocumentElement.ChildNodes[i].ChildNodes['Rate'].Text;
exit;//Выходим из обработчика события нажатия на кнопку.
end;
end;

   procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  '.', #8,'0'..'9' :  ; // цифры и <Back Space>

           else   // остальные символы запрещены
               key := Chr(0);
end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form2.Show
end;

procedure TForm1.N3Click(Sender: TObject);
begin
Form4.Show
end;

procedure TForm1.Image8Click(Sender: TObject);
Var
  Kurs1,Kurs2,Summa:Real;
  Cod:Integer;
  Ed:String[9];
begin
  Val(Edit1.Text,Kurs1,Cod);
  Val(Edit2.Text,Kurs2,Cod);
  Val(Edit3.Text,Summa,Cod);
    If RadioButton1.Checked=True then
      Summa:=summa/Kurs1
        Else
          Summa:=summa*Kurs2;
            Str(Summa:9:2,Ed);
              Edit4.Text:=ed;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
Edit3.SetFocus
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
Edit3.SetFocus

end;

procedure TForm1.N4Click(Sender: TObject);
begin
Edit1.Text:=' ';
Edit2.Text:=' ';
Edit3.Text:=' ';
Edit4.Text:=' ';
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  '.', #8,'0'..'9' :  ; // цифры и <Back Space>

           else   // остальные символы запрещены
               key := Chr(0);
end;
end;
  procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  '.', #8,'0'..'9' :  ; // цифры и <Back Space>

           else   // остальные символы запрещены
               key := Chr(0);
end;
end;

  procedure TForm1.N5Click(Sender: TObject);
begin
Form3.Show;
end;

end.


