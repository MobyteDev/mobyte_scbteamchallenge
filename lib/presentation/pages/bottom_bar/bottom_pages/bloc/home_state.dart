part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<Account> accounts,
    required List<Currency> currencies,
  }) = _HomeState;
}
