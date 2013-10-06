unit OrderHandler;

interface

uses
  classes,

  FireDAC.Comp.Client,

  Order;

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
var
  Query : TFDQuery;
  Order : TOrder;
begin
  Query := TFDQuery.Create(nil);
  Query.Connection := fConnection;

  Query.SQL.Clear;
  Query.SQL.Add('select Id, Description, Total from Orders order by Id');
  Query.OpenOrExecute();

  while not Query.Eof do
  begin
    Order := TOrder.Create();
    Order.Description := Query.fieldByName('Description').AsString;
    Order.Id := Query.fieldByName('Id').AsInteger;
    Order.Total := Query.fieldByName('Total').AsCurrency;
    Orders.Add(Order);

    Query.Next();
  end;

  Query.free();
end;

end.
