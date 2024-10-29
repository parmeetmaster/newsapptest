
import 'package:company_test/injectable/inject.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  ThemeController() {
    getCurruntThemeMode();
  }

  ThemeData getCurruntTheme(BuildContext context) => Theme.of(context);

  Future<ThemeMode> getCurruntThemeMode() async {
    //database decide default;
    bool isDarkMode = await getIt<SharedPreferences>().getBool("themeMode")??true;
    if (isDarkMode) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }
    notifyListeners();
    print("theme is " + themeMode.toString());
    return themeMode;
  }

  Future<void> changeTheme() async {
    if (themeMode == ThemeMode.dark) {
      themeMode = ThemeMode.light;
      await getIt<SharedPreferences>().setBool("themeMode",false);
    } else {
      themeMode = ThemeMode.dark;
      await getIt<SharedPreferences>().setBool("themeMode", true);
    }
    notifyListeners();
  }
}

final themeProvider = ChangeNotifierProvider.autoDispose((ref) {
  ref.keepAlive();
  return ThemeController();
});
