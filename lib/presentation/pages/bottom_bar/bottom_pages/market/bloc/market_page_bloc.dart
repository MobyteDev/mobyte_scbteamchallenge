import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mobyte_scbteamchallenge/models/currency_model/currency_model.dart';

part 'market_page_event.dart';
part 'market_page_state.dart';
part 'market_page_bloc.freezed.dart';

@injectable
class MarketPageBloc extends Bloc<MarketPageEvent, MarketPageState> {
  MarketPageBloc()
      : super(
          const MarketPageState(
            listCurrency: [
              CurrencyModel(
                  name: "Etherium",
                  shortName: "BTC",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
              CurrencyModel(
                  name: "Etherium",
                  shortName: "ETH",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
              CurrencyModel(
                  name: "Etherium",
                  shortName: "ETH",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
              CurrencyModel(
                  name: "Etherium",
                  shortName: "ETH",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
              CurrencyModel(
                  name: "Etherium",
                  shortName: "ETH",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
              CurrencyModel(
                  name: "Etherium",
                  shortName: "ETH",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
              CurrencyModel(
                  name: "Etherium",
                  shortName: "ETH",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
                  CurrencyModel(
                  name: "Etherium",
                  shortName: "ETH",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
              CurrencyModel(
                  name: "Etherium",
                  shortName: "ETH",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
              CurrencyModel(
                  name: "Etherium",
                  shortName: "ETH",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
              CurrencyModel(
                  name: "Etherium",
                  shortName: "ETH",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
              CurrencyModel(
                  name: "Etherium",
                  shortName: "ETH",
                  percent: "10%",
                  value: "\$127.3",
                  isGrowing: true),
            ],
          ),
        ) {
    on<MarketPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
