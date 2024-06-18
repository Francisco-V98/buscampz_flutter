import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/text_field_incidentes/content/text_form_field_incidentes_content.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class TextFieldIncidentes extends StatelessWidget {
  const TextFieldIncidentes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          color: AppColors.primary,
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
              const TextFormFieldIncidentesContent(),
            ],
          ),
        ),
      ],
    );
  }
}


