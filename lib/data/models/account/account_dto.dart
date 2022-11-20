import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobyte_scbteamchallenge/data/models/currency/currency_dto.dart';

part 'account_dto.freezed.dart';
part 'account_dto.g.dart';

@freezed
class AccountDto with _$AccountDto {
  const factory AccountDto({
    required int id,
    CurrencyDto? currency,
    required String amount,
  }) = _AccountDto;

  factory AccountDto.fromJson(Map<String, dynamic> json) => _$AccountDtoFromJson(json);
}
