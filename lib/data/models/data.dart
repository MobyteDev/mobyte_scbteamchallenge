import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobyte_scbteamchallenge/data/models/currency/currency_dto.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  const factory Data({required List<CurrencyDto> data}) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
