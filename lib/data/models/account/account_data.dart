import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobyte_scbteamchallenge/data/models/account/account_dto.dart';

part 'account_data.freezed.dart';

part 'account_data.g.dart';

@freezed
class AccountData with _$AccountData {
  const factory AccountData({required List<AccountDto> data}) = _AccountData;

  factory AccountData.fromJson(Map<String, dynamic> json) =>
      _$AccountDataFromJson(json);
}
