import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/text_field_incidentes/content/incident_content_text_form.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';

class IncidentTextField extends StatelessWidget {
  const IncidentTextField({super.key});

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
                "Tipo de Incidencia",
                style: AppTextStyles.h4_20(AppColors.black),
              ),
              const SizedBox(
                height: 8,
              ),
              const IncidentContentTextField(),
            ],
          ),
        ),
      ],
    );
  }
}
