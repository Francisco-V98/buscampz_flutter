import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/text_field_incidentes/content/text_form_field__detalles_incidentes.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class TextFieldDetallesDelIncidente extends StatelessWidget {
  const TextFieldDetallesDelIncidente({super.key});

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
              const TextFormFieldDetalleDeLaIncidencia(),
            ],
          ),
        ),
      ],
    );
  }
}
