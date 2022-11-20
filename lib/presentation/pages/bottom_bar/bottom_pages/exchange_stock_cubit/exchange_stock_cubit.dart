import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/exchange_stock_cubit/exchange_stock_state.dart';

class ExchangeStockCubit extends Cubit<ExchangeStockState> {
  ExchangeStockCubit() : super(ExchangeStockInit());

  void computeMoney(double sum) {
    emit(ExchangeStockComputedSucces(recieved: sum * 1.8));
  }

  void buyMoney(double sum) {
    emit(ExchangeStockBuySucces());
  }
}
