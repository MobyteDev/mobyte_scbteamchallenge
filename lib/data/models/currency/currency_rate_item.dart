import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_rate_item.freezed.dart';

@freezed
class CurrencyRateItem with _$CurrencyRateItem {
  const factory CurrencyRateItem({
    required String token,
    required String price,
  }) = _CurrencyRateItem;
}
