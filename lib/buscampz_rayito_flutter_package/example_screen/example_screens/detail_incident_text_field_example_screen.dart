import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';

class DetailIncidentTextFieldExampleScreen extends StatelessWidget {
  const DetailIncidentTextFieldExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Incident TextField Screen"),
      ),
      body: const Column(
        children: [
          Center(
            child: RYTDetailIncidentText(
              title: "Detalle de la incidencia",
            ),
          ),
          RYTTextField(
            hintText: "Escribir...",
            verticalPadding: 90.0,
            horizontalPadding: 20.0,
          ),
        ],
      ),
    );
  }
}
