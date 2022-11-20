import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mobyte_scbteamchallenge/data/models/account/account_data.dart';
import 'package:mobyte_scbteamchallenge/data/models/account/account_dto.dart';
import 'package:retrofit/http.dart';

part 'account_remote_data_source.g.dart';

@singleton
@RestApi()
abstract class AccountRemoteDataSource {
  @factoryMethod
  factory AccountRemoteDataSource(Dio dio) = _AccountRemoteDataSource;

  @GET('/api/account')
  Future<AccountData> fetchAccounts();
}
