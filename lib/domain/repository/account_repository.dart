import 'package:mobyte_scbteamchallenge/domain/entities/account.dart';
import 'package:rxdart/rxdart.dart';

abstract class AccountRepository {
  final accounts = BehaviorSubject<List<Account>>();

  List<Account> get lastAccounts => accounts.value ?? [];

  Future<void> fetchAccounts();

  Future<Account> createAccount(String currencyId);
}
