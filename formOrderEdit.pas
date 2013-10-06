unit formOrderEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmOrderEdit = class(TForm)
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
  frmOrderEdit: TfrmOrderEdit;

implementation

uses
  formOrderList;

{$R *.dfm}

procedure TfrmOrderEdit.Button1Click(Sender: TObject);
begin
  Total.Text := inttostr(strtoint(edit1.Text) + strtoint(Edit2.Text));
end;

procedure TfrmOrderEdit.Button3Click(Sender: TObject);
begin
  with frmOrderList do
  begin
    FDQuery1.Connection.Connected := true;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('update orders set');
    FDQuery1.SQL.Add('description = ''' + Desc.Text + ''',');
    FDQuery1.SQL.Add('total = ' + Total.Text);
    FDQuery1.SQL.Add('where ID = ' + ListView1.Selected.Caption);
    FDQuery1.ExecSQL();
  end;

  close();
end;

end.
