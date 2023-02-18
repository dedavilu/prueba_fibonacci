unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  fibo: array of Integer;
  var n, I, p: integer;
  var serie :string;

implementation

procedure fibonacci();
begin
  if n<1 then
  begin
  showMessage('Error... El Número Ingresadoe Es Menor Que 1');
  end
  else
  begin
      if n>20 then
        showMessage('Error... El Número Ingresadoe Es Mayor Que 20')
      else
        begin
        setlength (fibo,n);
        fibo[0]:=0;
        fibo[1]:=1;
          for I := 1 to n do
            begin
              if I<2 then
              else
               begin
                fibo[I]:=fibo[I-2]+fibo[I-1]
               end;
              serie:= serie + '  ' + fibo[I].ToString;
            end;
        end;
  end;
  showMessage('La Serie de Fibonacci Generada Es: ' + serie);
serie:='';
end;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
   n:= StrToInt(Edit1.text);
   fibonacci();
end;

procedure TForm2.Edit1Click(Sender: TObject);
begin
edit1.Text:= '';
end;

end.
