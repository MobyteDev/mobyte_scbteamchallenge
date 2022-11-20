part of 'sell_page_bloc.dart';

@freezed
class SellPageEvent with _$SellPageEvent {
  const factory SellPageEvent.started() = _Started;

  const factory SellPageEvent.changedCurrency1(
      {required CurrencyModel currency}) = ChangedCurrency1;

  const factory SellPageEvent.changedCurrency2(
      {required CurrencyModel currency}) = ChangedCurrency2;
}
