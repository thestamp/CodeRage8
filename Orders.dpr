program Orders;

uses
  Vcl.Forms,
  formOrderList in 'formOrderList.pas' {frmOrderList},
  formOrderEdit in 'formOrderEdit.pas' {frmOrderEdit},
  formOrderAdd in 'formOrderAdd.pas' {frmOrderAdd},
  Order in 'Order.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmOrderList, frmOrderList);
  Application.CreateForm(TfrmOrderAdd, frmOrderAdd);
  Application.CreateForm(TfrmOrderEdit, frmOrderEdit);
  Application.Run;
end.
