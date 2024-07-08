import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/text_field_incidentes/detail_incident_text_form.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class DetailIncidentTextFieldScreen extends StatelessWidget {
  const DetailIncidentTextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Incident TextField Screen"),
      ),
      body: Center(
        child: Container(
          color: AppColors.primary,
          child: const DetailIncidentTextField(),
        ),
      ),
    );
  }
}