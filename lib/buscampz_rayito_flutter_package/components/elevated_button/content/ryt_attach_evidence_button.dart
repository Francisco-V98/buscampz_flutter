import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class RYTAttachPhotoButton extends StatelessWidget {
  final String text;
  final Color color;
  const RYTAttachPhotoButton({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          color,
        ),
        elevation: const WidgetStatePropertyAll(
          0,
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 15.0,
          ),
        ),
        textStyle: WidgetStateProperty.all(
          const TextStyle(
            fontSize: 16.0,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8.0,
            ),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: AppTextStyles.btn_16(
          AppColors.bgBotDark,
        ),
      ),
    );
  }
}
