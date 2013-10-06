unit OrderHandler;

interface

uses
  classes,

  FireDAC.Comp.Client;

type
  TOrderHandler = class(TObject)
  private
    fConnection : TFDConnection;
  public
    constructor create(connection : TFDConnection);
    procedure AddOrder(Description : string; Total : currency);
    procedure EditOrder(Description : string; Total : currency);
    procedure GetOrders(Orders : TList);
  end;

implementation

{ TOrderHandler }

procedure TOrderHandler.AddOrder(Description: string; Total: currency);
var
  Query : TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  Query.Connection := fConnection;
  with Query do
  begin
    SQL.Clear;
    SQL.Add('insert into orders (description, total) values (');
    SQL.Add(':DESC,');
    SQL.Add(':TOTAL)');
    paramByName('DESC').AsString := Description;
    paramByName('TOTAL').AsCurrency := Total;
    ExecSQL();
  end;

  Query.free();
end;

constructor TOrderHandler.create(connection: TFDConnection);
begin
  fConnection := Connection;
end;

procedure TOrderHandler.EditOrder(Description: string; Total: currency);
begin

end;

procedure TOrderHandler.GetOrders(Orders: TList);
begin

end;

end.
