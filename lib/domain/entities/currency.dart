import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';

@freezed
abstract class Currency with _$Currency {
  const factory Currency({
    required int id,
    required String name,
    required String token,
    required String iconUrl,
    required List<double> prices,
    required double currentPrice,
    required String symbol,
    required double profit,
  }) = _Currency;
}
