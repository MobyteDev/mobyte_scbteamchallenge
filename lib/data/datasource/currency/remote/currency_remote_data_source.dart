import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mobyte_scbteamchallenge/data/models/currency/currency_dto.dart';
import 'package:mobyte_scbteamchallenge/data/models/data.dart';
import 'package:retrofit/http.dart';

part 'currency_remote_data_source.g.dart';

@singleton
@RestApi()
abstract class CurrencyRemoteDataSource {
  @factoryMethod
  factory CurrencyRemoteDataSource(Dio dio) = _CurrencyRemoteDataSource;

  @GET('/api/currency')
  Future<Data> fetchCurrencies();
}