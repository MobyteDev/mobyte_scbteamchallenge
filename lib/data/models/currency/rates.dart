import 'package:freezed_annotation/freezed_annotation.dart';

part 'rates.freezed.dart';
part 'rates.g.dart';

@freezed
class Rates with _$Rates {
  const factory Rates({required Map<String, double> rates}) = _Rates;

  factory Rates.fromJson(Map<String, dynamic> json) =>
      _$RatesFromJson(json);
}
