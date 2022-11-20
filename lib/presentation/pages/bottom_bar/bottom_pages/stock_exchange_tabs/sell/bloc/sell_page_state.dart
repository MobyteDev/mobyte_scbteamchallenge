part of 'sell_page_bloc.dart';

@freezed
class SellPageState with _$SellPageState {
  const factory SellPageState({
    required CurrencyModel currency1,
    required CurrencyModel currency2,
  }) = _SellPageState;
}
