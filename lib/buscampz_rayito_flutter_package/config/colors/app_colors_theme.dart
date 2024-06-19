import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppColorTheme {
  final bool isDarkMode;
  AppColorTheme(this.isDarkMode);

  Color get primary => AppColors.primary;
  Color get primaryFocus => AppColors.primaryFocus;
  Color get secondary => AppColors.secondary;
  Color get secondaryFocus => AppColors.secondaryFocus;
  Color get bgTop => isDarkMode ? AppColors.bgTopDark : AppColors.bgTopLight;
  Color get bgMid => isDarkMode ? AppColors.bgMidDark : AppColors.bgMidLight;
  Color get bgBot => isDarkMode ? AppColors.bgBotDark : AppColors.bgBotLight;
  Color get bgColor => isDarkMode ? AppColors.bgColorDark : AppColors.bgColorLight;
  Color get success => isDarkMode ? AppColors.successDark : AppColors.successLight;
  Color get info => isDarkMode ? AppColors.infoDark : AppColors.infoLight;
  Color get warning => isDarkMode ? AppColors.warningDark : AppColors.warningLight;
  Color get danger => isDarkMode ? AppColors.dangerDark : AppColors.dangerLight;
  Color get white => AppColors.white;
  Color get whiteVariant => isDarkMode ? AppColors.black : AppColors.white;
  Color get black => AppColors.black;
  Color get blackVariant => isDarkMode ? AppColors.white : AppColors.black;
  Color get grey => isDarkMode ? AppColors.greyDark : AppColors.greyLight;
}
