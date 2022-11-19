import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:mobyte_scbteamchallenge/utils/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class ColorNotifier with ChangeNotifier {

  final SharedPreferences _pref;

  ColorNotifier(this._pref) {
    isDark = _pref.getBool("isDarkTheme") ?? false;
  }

  bool isDark = false;

  void setIsDark(bool dark) {
    isDark = dark;
    _pref.setBool("isDarkTheme", dark);
    notifyListeners();
  }

  get white => isDark ? AppColors.darkwhite : AppColors.white;

  get blue => isDark ? AppColors.blue : AppColors.darkblue;

  get grey => isDark ? AppColors.grey : AppColors.darkgrey;

  get black => isDark ? AppColors.black : AppColors.darkblack;

  get pinAuth => isDark ? AppColors.pinauth : AppColors.darkpinauth;

  get investmentBlue => isDark ? AppColors.investmentcolor : AppColors.darkInvestmentcolor;

  get confirmStockBuy =>
      isDark ? AppColors.darkconcirmstockbuycolor : AppColors.concirmstockbuycolor;

  get prefixIcon => isDark ? AppColors.prefixicon : AppColors.darkprefixicon;

  get identifyMethod => isDark ? AppColors.darkidentyfiymethod : AppColors.identyfiymethod;

  get favorites => isDark ? AppColors.darkfavorites : AppColors.favorites;
}

extension ColorExt on BuildContext {
  ColorNotifier get colors => Provider.of<ColorNotifier>(this, listen: true);
}
