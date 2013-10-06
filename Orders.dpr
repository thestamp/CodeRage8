program Orders;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2edit in 'Unit2edit.pas' {editorder},
  Unit2 in 'Unit2.pas' {add};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tadd, add);
  Application.CreateForm(Teditorder, editorder);
  Application.Run;
end.
