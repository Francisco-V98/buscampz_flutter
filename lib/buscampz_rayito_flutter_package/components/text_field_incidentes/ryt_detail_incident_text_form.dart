import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/text_field_incidentes/content/detail_incident_text_form_content.dart';

//Change name of the class Spanish to English
class RYTDetailIncidentTextField extends StatelessWidget {
  const RYTDetailIncidentTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Detalle de la Incidencia",
                style: AppTextStyles.h3_24(
                  AppColors.bgBotDark,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const RYTDetailIncidentTextFieldContent(),
            ],
          ),
        ),
      ],
    );
  }
}
