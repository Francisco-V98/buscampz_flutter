import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/elevatedButtonEvidencia/content/attach_evidence_button.dart';
import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/elevatedButtonEvidencia/content/send_evidence_elevated_button.dart';

//Change name of the class Spanish to English
class EvidenceElevatedButtons extends StatelessWidget {
  const EvidenceElevatedButtons({super.key});

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
            child: AttachPhotoButton(
              text: "Adjuntar Foto",
            ),
          ),
        ),
        SizedBox(
          height: 19.0,
        ),
        SendEvidenceElevatedButton(
          text: "Enviar Incidencia",
        ),
      ],
    );
  }
}
