import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mobyte_scbteamchallenge/models/currency_model/currency_model.dart';

part 'sell_page_event.dart';
part 'sell_page_state.dart';
part 'sell_page_bloc.freezed.dart';

@injectable
class SellPageBloc extends Bloc<SellPageEvent, SellPageState> {
  SellPageBloc()
      : super(
          const _SellPageState(
            currency1: CurrencyModel(
                name: "Etherium",
                shortName: "ETH",
                percent: "10%",
                value: "\$127.3",
                isGrowing: true),
            currency2: CurrencyModel(
                name: "Etherium",
                shortName: "ETH",
                percent: "10%",
                value: "\$127.3",
                isGrowing: true),
          ),
        ) {
    on<ChangedCurrency1>(_onChangedCurrency1);
    on<ChangedCurrency2>(_onChangedCurrency2);
  }

  void _onChangedCurrency1(
    ChangedCurrency1 event,
    Emitter emit,
  ) {
    emit(state.copyWith(currency1: event.currency));
  }

  void _onChangedCurrency2(
    ChangedCurrency2 event,
    Emitter emit,
  ) {
    emit(state.copyWith(currency2: event.currency));
  }
}
