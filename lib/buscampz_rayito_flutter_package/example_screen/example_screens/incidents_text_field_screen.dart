import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class IncidentsTextFieldExampleScreen extends StatelessWidget {
  const IncidentsTextFieldExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextFieldIncidents"),
      ),
      body: Container(
        color: AppColors.primary,
        child: const Center(
          child: RYTIncidentTextField(),
        ),
      ),
    );
  }
}
