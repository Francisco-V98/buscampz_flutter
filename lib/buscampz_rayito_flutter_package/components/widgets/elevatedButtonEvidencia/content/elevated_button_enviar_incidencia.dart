import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class ElevatedButtonEnviarIncidencia extends StatelessWidget {
  const ElevatedButtonEnviarIncidencia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(2),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
            ),
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 16.0),
            ),
            backgroundColor: MaterialStateProperty.all(AppColors.primary),
            foregroundColor: MaterialStateProperty.all(AppColors.bgBotDark),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Enviar Incidencia',
            style: AppTextStyles.btn_16(
              AppColors.bgBotDark,
            ),
          ),
        ),
      ),
    );
  }
}
