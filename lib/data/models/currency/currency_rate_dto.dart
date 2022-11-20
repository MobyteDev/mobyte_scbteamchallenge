import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobyte_scbteamchallenge/data/models/currency/currency_rate_item.dart';

part 'currency_rate_dto.freezed.dart';

@freezed
class CurrencyRateDto with _$CurrencyRateDto {
  const factory CurrencyRateDto({
    required String baseToken,
    required List<CurrencyRateItem> prices,
  }) = _CurrencyRateDto;
}
