abstract class ExchangeStockState {}

class ExchangeStockInit implements ExchangeStockState {}

class ExchangeStockComputedSucces implements ExchangeStockState {
  final double recieved;
  ExchangeStockComputedSucces({required this.recieved});
}

class ExchangeStockBuySucces implements ExchangeStockState {}

class ExchangeStockBuyFailed implements ExchangeStockState {}
