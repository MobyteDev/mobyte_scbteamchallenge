import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mobyte_scbteamchallenge/data/models/currency/currency_dto.dart';
import 'package:mobyte_scbteamchallenge/data/models/currency/rates.dart';
import 'package:retrofit/http.dart';
import 'package:web_socket_channel/io.dart';

part 'currency_rate_remote_data_source.g.dart';

@singleton
@RestApi()
abstract class CurrencyRateRemoteDataSource {

  @factoryMethod
  factory CurrencyRateRemoteDataSource(@Named("xchange") Dio dio) = _CurrencyRateRemoteDataSource;

  @GET('/latest')
  Future<Rates> fetchRates();
}
