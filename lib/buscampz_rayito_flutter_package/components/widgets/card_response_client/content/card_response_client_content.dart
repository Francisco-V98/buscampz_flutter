import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class CardResponseClientContent extends StatelessWidget {
  const CardResponseClientContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 20.0,
          child: Icon(Icons.abc),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selena Hernández",
                style: AppTextStyles.sub3_14(
                  AppColors.bgBotDark,
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              const Text(
                "ok Señor Freddy, Estoy atento para para bajar y entregar a Daniel.",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
