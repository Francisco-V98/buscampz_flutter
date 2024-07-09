import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/ryt_app_text_style.dart';

class ClientContentAnswerCard extends StatelessWidget {
  const ClientContentAnswerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 20.0,
          backgroundImage: AssetImage(
            "assets/images/image_client_example.png",
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selena Hernández",
                style: RYTAppTextStyles.sub3_14(
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
