import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required int id,
    required String name,
    required String token,
    required String iconUrl,
    required double amount,
    required String symbol,
  }) = _Account;
}