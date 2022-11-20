import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:mobyte_scbteamchallenge/data/datasource/account/remote/account_remote_data_source.dart';
import 'package:mobyte_scbteamchallenge/domain/entities/account.dart';
import 'package:mobyte_scbteamchallenge/domain/repository/account_repository.dart';

@Singleton(as: AccountRepository)
class AccountRepositoryImpl extends AccountRepository {
  final AccountRemoteDataSource _dataSource;

  AccountRepositoryImpl(this._dataSource) {
    fetchAccounts();
  }

  @override
  Future<Account> createAccount(String currencyId) {
    return Future.value(
      Account(
        id: 1,
        name: "name",
        token: "token",
        iconUrl: "iconUrl",
        amount: 1000,
        symbol: "",
      ),
    );
  }

  @override
  Future<void> fetchAccounts() async {
    final acc = await _dataSource.fetchAccounts();
    final result = acc.data.map((e) => Account(
          id: e.id,
          name: e.currency?.name ?? '',
          token: e.currency?.token ?? '',
          iconUrl: e.currency?.iconUrl ?? '',
          amount: double.parse(e.amount),
          symbol: e.currency?.token ?? '',
        )).toList();
    print(result);
    accounts.add(result);
  }
}
