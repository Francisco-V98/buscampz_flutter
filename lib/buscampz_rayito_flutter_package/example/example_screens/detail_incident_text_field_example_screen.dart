import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';

class DetailIncidentTextFieldExampleScreen extends StatelessWidget {
  const DetailIncidentTextFieldExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Incident TextField Screen"),
      ),
      body: Center(
        child: Container(
          color: AppColors.primary,
          child: const RYTDetailIncidentTextField(),
        ),
      ),
    );
  }
}
