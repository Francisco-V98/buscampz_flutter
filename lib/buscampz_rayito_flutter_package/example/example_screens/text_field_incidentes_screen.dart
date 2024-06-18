import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/text_field_incidentes/text_field_incidentes.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldIncidentesScreen extends StatelessWidget {
  const TextFieldIncidentesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: AppColors.primary,
        child: const Center(
          child: TextFieldIncidentes(),
        ),
      ),
    );
  }
}
