import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/appbar/ryt_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:buscampz_flutter/generated/l10n.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

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
    return SafeArea(
      child: Column(
        children: [
          //TODO: Update to RYT
          const RYTAppBar(
            title: "Incidencias",
          ),
          const SizedBox(
            height: 20,
          ),
          const RYTTextField(
            hintText: "Elegir...",
            suffixIcon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.bgBotDark,
            ),
          ),
          const RYTDetailIncidentText(
            title: "Detalle de la incidencia",
          ),
          const RYTTextField(
            hintText: "Escribir...",
            verticalPadding: 90.0,
            horizontalPadding: 20.0,
          ),
          const SizedBox(
            height: 20,
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
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                S.of(context).incidenciaDescription,
                style: const TextStyle(
                  color: AppColors.secondary,
                ),
              ),
            ),
          ),

          const Spacer(),
          RYTButton(
            text: S.of(context).sendEvidence,
            horizontalPadding: 40.0,
            onPressed: () {
              //TODO: Action when pressing the button
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
