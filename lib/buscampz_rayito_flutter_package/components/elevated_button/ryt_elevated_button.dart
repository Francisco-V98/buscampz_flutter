import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';

class RYTButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onPressed;
  final double? elevation;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? fontSize;
  final double? borderRadius;
  final double? width;

  const RYTButton({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.onPressed,
    this.elevation,
    this.verticalPadding,
    this.horizontalPadding,
    this.fontSize,
    this.borderRadius,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 0.0,
      ),
      child: SizedBox(
        width: width ?? double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all(backgroundColor ?? AppColors.primary),
            elevation: WidgetStateProperty.all(elevation ?? 2),
            padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(
                vertical: verticalPadding ?? 15.0,
              ),
            ),
            textStyle: WidgetStateProperty.all(
              TextStyle(
                fontSize: fontSize ?? 16.0,
              ),
            ),
            foregroundColor: WidgetStateProperty.all(
              textColor ?? AppColors.bgBotDark,
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  borderRadius ?? 8.0,
                ),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppTextStyles.btn_16(
              textColor ?? AppColors.bgBotDark,
            ),
          ),
        ),
      ),
    );
  }
}
