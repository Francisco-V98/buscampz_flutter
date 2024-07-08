import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/elevated_button/content/ryt_attach_evidence_button.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/elevated_button/content/ryt_send_evidence_elevated_button.dart';

class IncidenceCreateScreen extends StatelessWidget {
  const IncidenceCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgBotLight,
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          AppBarBuscampz(
            title: "Incidencias",
          ),
          SizedBox(
            height: 20,
          ),
          RYTIncidentTextField(),
          RYTDetailIncidentTextField(),
          RYTAttachPhotoButton(
            color: AppColors.bgBotLight,
            text: "Adjuntar Foto",
          ),
          Center(
            child: Text(
              "Cuando se envíe esta incidencia, se le notificará a los representantes e institución. Debes ser lo más explícito posible para entender mejor el inconveniente.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.greyDark
              ),
            ),
          ),
          Spacer(),
          RYTSendEvidenceElevatedButton(
            text: "Enviar Evidencia",
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
