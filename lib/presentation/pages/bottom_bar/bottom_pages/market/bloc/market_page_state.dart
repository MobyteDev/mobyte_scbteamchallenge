part of 'market_page_bloc.dart';

@freezed
class MarketPageState with _$MarketPageState {
  const factory MarketPageState({ required List<CurrencyModel> listCurrency, }) = _MarketPageState;
  const factory MarketPageState.initial() = _Initial;
}
