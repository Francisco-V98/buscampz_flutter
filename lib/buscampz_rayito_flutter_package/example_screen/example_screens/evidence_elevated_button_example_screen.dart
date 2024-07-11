import 'package:flutter/material.dart';
import 'package:buscampz_flutter/generated/l10n.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';

class EvidenceElevatedButtonExampleScreen extends StatelessWidget {
  const EvidenceElevatedButtonExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      appBar: AppBar(
        title: Text(S.of(context).evidenceElevatedButtonScreen),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          RYTButton(
            horizontalPadding: 40,
            text: S.of(context).attachPhoto,
            backgroundColor: AppColors.bgBotLight,
            elevation: 0,
            onPressed: () {
              //TODO: Action when pressing the button
            },
          ),
          const SizedBox(
            height: 35,
          ),
          RYTButton(
            text: S.of(context).sendEvidence,
            horizontalPadding: 40.0,
            onPressed: () {
              //TODO: Action when pressing the button
            },
          ),
        ],
      ),
    );
  }
}
