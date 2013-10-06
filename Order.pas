unit Order;

interface

type
  TOrder = class(TObject)
  private
    FTotal: currency;
    FId: integer;
    FDescription: string;
    procedure SetDescription(const Value: string);
    procedure SetId(const Value: integer);
    procedure SetTotal(const Value: currency);
  public
    property Id : integer read FId write SetId;
    property Description : string read FDescription write SetDescription;
    property Total : currency read FTotal write SetTotal;
  end;

implementation

{ TOrder }



{ TOrder }

procedure TOrder.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

procedure TOrder.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TOrder.SetTotal(const Value: currency);
begin
  FTotal := Value;
end;

end.
