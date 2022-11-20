import 'package:mobyte_scbteamchallenge/domain/entities/account.dart';
import 'package:mobyte_scbteamchallenge/domain/entities/currency.dart';
import 'package:rxdart/rxdart.dart';

abstract class CurrencyRepository {
  final currencies = BehaviorSubject<List<Currency>>();
  final baseCurrency = BehaviorSubject<Currency>();

  List<Currency> get lastCurrencies => currencies.value ?? [];

  Currency get lastBaseCurrency =>
      baseCurrency.value ??
      const Currency(
        id: 1,
        name: "RUB",
        token: "RUB",
        iconUrl: "iconUrl",
        prices: [],
        currentPrice: 10,
        symbol: "",
        profit: 0,
      );
}
