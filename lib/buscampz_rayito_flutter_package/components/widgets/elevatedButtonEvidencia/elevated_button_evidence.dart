import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/elevatedButtonEvidencia/content/elevated_button_enviar_incidencia.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class ElevatedButtonEvidencia extends StatelessWidget {
  const ElevatedButtonEvidencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(
                  0,
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                ),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                foregroundColor: MaterialStateProperty.all(
                  AppColors.bgBotDark,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Adjuntar Foto',
                style: AppTextStyles.btn_16(
                  AppColors.bgBotDark,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 19.0,
        ),
        const ElevatedButtonEnviarIncidencia(),
      ],
    );
  }
}
