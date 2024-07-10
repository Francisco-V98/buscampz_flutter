import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class RYTTextField extends StatelessWidget {
  final String? hintText;
  final double? width;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? blurRadius;
  final Color? fillColor;
  final Color? hintTextColor;
  final FontWeight? hintTextFontWeight;
  final int? maxLines;
  final Widget? suffixIcon;

  const RYTTextField({
    super.key,
    this.hintText,
    this.width,
    this.verticalPadding,
    this.horizontalPadding,
    this.blurRadius,
    this.fillColor,
    this.hintTextColor,
    this.hintTextFontWeight,
    this.maxLines,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: blurRadius ?? 6,
              color: AppColors.greyLight,
              offset: const Offset(0, 2.5),
            ),
          ],
        ),
        child: TextFormField(
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            filled: true,
            fillColor: fillColor ?? Colors.white,
            hintText: hintText,
            hintStyle: TextStyle(
              fontWeight: hintTextFontWeight ?? FontWeight.bold,
              color: hintTextColor ?? Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: verticalPadding ?? 20.0,
              horizontal: horizontalPadding ?? 20.0,
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
}
