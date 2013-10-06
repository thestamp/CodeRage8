unit Unit2edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Teditorder = class(TForm)
    Desc: TLabeledEdit;
    Total: TLabeledEdit;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  editorder: Teditorder;

implementation

uses
  Unit1;

{$R *.dfm}

procedure Teditorder.Button1Click(Sender: TObject);
begin
  Total.Text := inttostr(strtoint(edit1.Text) + strtoint(Edit2.Text));
end;

procedure Teditorder.Button3Click(Sender: TObject);
begin
  with Form1 do
  begin
    FDQuery1.Connection.Connected := true;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('update orders set');
    FDQuery1.SQL.Add('description = ''' + Desc.Text + ''',');
    FDQuery1.SQL.Add('total = ' + Total.Text);
    FDQuery1.SQL.Add('where ID = ' + Form1.ListView1.Selected.Caption);
    FDQuery1.ExecSQL();
  end;

  close();
end;

end.
