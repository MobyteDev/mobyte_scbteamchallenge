part of 'market_page_bloc.dart';

@freezed
class MarketPageEvent with _$MarketPageEvent {
  const factory MarketPageEvent.started() = _Started;
}