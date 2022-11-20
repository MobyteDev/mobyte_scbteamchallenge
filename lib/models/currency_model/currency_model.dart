import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    required String name,
    required String shortName,
    //   required String graph,
    required String percent,
    required String value,
    // required String icon,
    required bool isGrowing,
  }) = _CurrencyModel;
}
