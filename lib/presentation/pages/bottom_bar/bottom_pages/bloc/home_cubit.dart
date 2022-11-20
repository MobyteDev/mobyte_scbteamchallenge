import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:mobyte_scbteamchallenge/domain/entities/account.dart';
import 'package:mobyte_scbteamchallenge/domain/entities/currency.dart';
import 'package:mobyte_scbteamchallenge/domain/repository/account_repository.dart';
import 'package:mobyte_scbteamchallenge/domain/repository/currency_repository.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final AccountRepository _accountRepository;
  final CurrencyRepository _currencyRepository;

  HomeCubit(this._accountRepository, this._currencyRepository)
      : super(HomeState(
          accounts: _accountRepository.lastAccounts,
          currencies: _currencyRepository.lastCurrencies,
        ));

  void pageOpened() {
    _accountRepository.accounts.listen((value) {
      emit(state.copyWith(accounts: value));
    });
    _currencyRepository.currencies.listen((value) {
      emit(state.copyWith(currencies: value));
    });
  }
}
