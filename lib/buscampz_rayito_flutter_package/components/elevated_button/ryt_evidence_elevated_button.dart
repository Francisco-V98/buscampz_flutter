import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/elevated_button/content/ryt_attach_evidence_button.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/elevated_button/content/ryt_send_evidence_elevated_button.dart';

//Change name of the class Spanish to English
class RYTEvidenceElevatedButtons extends StatelessWidget {
  const RYTEvidenceElevatedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: SizedBox(
            width: double.infinity,
            child: RYTAttachPhotoButton(
              color: AppColors.bgBotLight,
              text: "Adjuntar Foto",
            ),
          ),
        ),
        SizedBox(
          height: 19.0,
        ),
        RYTSendEvidenceElevatedButton(
          text: "Enviar Incidencia",
        ),
      ],
    );
  }
}
