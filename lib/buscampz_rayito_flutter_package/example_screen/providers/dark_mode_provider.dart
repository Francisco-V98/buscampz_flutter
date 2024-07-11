import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) {
  return true;
});

final appColorThemeProvider = StateProvider<AppColorTheme>((ref) {
  final isDarkMode = ref.watch(isDarkModeProvider);
  return AppColorTheme(isDarkMode);
});
