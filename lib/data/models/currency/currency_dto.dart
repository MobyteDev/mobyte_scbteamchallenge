import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_dto.freezed.dart';

part 'currency_dto.g.dart';

@freezed
class CurrencyDto with _$CurrencyDto {
  const factory CurrencyDto({
    required int id,
    @JsonKey(name: "title")
    required String name,
    @JsonKey(name: "const")
    required String token,
    @JsonKey(name: "icon")
    required String iconUrl,
  }) = _CurrencyDto;

  factory CurrencyDto.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDtoFromJson(json);
}
