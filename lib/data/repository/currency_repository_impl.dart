import 'package:injectable/injectable.dart';
import 'package:mobyte_scbteamchallenge/data/datasource/currency/remote/currency_rate_remote_data_source.dart';
import 'package:mobyte_scbteamchallenge/data/datasource/currency/remote/currency_remote_data_source.dart';
import 'package:mobyte_scbteamchallenge/data/models/currency/currency_rate_dto.dart';
import 'package:mobyte_scbteamchallenge/domain/entities/currency.dart';
import 'package:mobyte_scbteamchallenge/domain/repository/currency_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_socket_channel/io.dart';

@Singleton(as: CurrencyRepository)
class CurrencyRepositoryImpl extends CurrencyRepository {
  final CurrencyRemoteDataSource _remoteDataSource;
  final CurrencyRateRemoteDataSource _rateRemoteDataSource;
  final SharedPreferences _prefs;

  IOWebSocketChannel currencyRate = IOWebSocketChannel.connect(
      Uri.parse('wss://api.xchangeapi.com/websocket/live'),
      headers: {
        'api-key': 'R7JYpdpMiF8kFRR6HRpH3pC2qpsxVLvc',
      });

  CurrencyRepositoryImpl(
    this._remoteDataSource,
    this._rateRemoteDataSource,
    this._prefs,
  ) {
    final baseCurrencyToken = _prefs.getString('base');
    _remoteDataSource.fetchCurrencies().then((value) async {
      final rates = await _rateRemoteDataSource.fetchRates();
      final result = value.data.map(
            (e) => Currency(
          id: e.id,
          name: e.name,
          token: e.token,
          iconUrl: e.iconUrl,
          prices: [],
          currentPrice: rates.rates[e.token] ?? 0,
          symbol: e.token,
          profit: 0,
        ),
      ).toList();
      currencies.add(result);
      print(result);

      currencyRate.sink
          .add('{"pairs": ["EURUSD", "CHFGBP"]}');
      currencyRate.stream.map((event) {
        print(event);
        return const CurrencyRateDto(baseToken: 'RUB', prices: []);
      }).listen((event) {});
    });
  }

  void changeBase() {
    final lastId = lastBaseCurrency.id;
    int nextIndex = lastCurrencies.indexWhere((e) => e.id == lastId) + 1;
    if (nextIndex >= lastCurrencies.length) {
      nextIndex = 0;
    }
    baseCurrency.add(lastCurrencies[nextIndex]);
  }
}
