import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/elevatedButtonEvidencia/elevated_button_evidence.dart';
import 'package:flutter/material.dart';

class ElevatedButtonEvidenciaScreen extends StatelessWidget {
  const ElevatedButtonEvidenciaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: ElevatedButtonEvidencia(),
      ),
    );
  }
}
