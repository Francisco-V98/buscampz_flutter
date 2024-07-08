import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/text_field_incidentes/incident_text_field.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class IncidentsTextFieldScreen extends StatelessWidget {
  const IncidentsTextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextFieldIncidents"),
      ),
      body: Container(
        color: AppColors.primary,
        child: const Center(
          child: IncidentTextField(),
        ),
      ),
    );
  }
}