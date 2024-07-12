import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/ryt_app_text_style.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';

class RYTIncidentTextField extends StatelessWidget {
  const RYTIncidentTextField({super.key});

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
                style: RYTAppTextStyles.h4_20(AppColors.black),
              ),
              const SizedBox(
                height: 8,
              ),
              const RYTTextField(
                hintText: "Elegir...",
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.bgBotDark,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
