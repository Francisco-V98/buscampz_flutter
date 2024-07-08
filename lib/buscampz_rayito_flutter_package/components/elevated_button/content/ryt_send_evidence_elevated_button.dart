import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';

//Change name of the class Spanish to English
class RYTSendEvidenceElevatedButton extends StatelessWidget {
  final String text;
  const RYTSendEvidenceElevatedButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: WidgetStateProperty.all(
              2,
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
            foregroundColor: WidgetStateProperty.all(
              AppColors.bgBotDark,
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
              ),
            ),
            backgroundColor: WidgetStateProperty.all(
              AppColors.primary,
            ),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: AppTextStyles.btn_16(
              AppColors.bgBotDark,
            ),
          ),
        ),
      ),
    );
  }
}
