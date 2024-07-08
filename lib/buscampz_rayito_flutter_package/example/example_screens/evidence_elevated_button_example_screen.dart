import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';

class EvidenceElevatedButtonExampleScreen extends StatelessWidget {
  const EvidenceElevatedButtonExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Evidence ElevatedButton Screen"),
      ),
      body: const Center(
        child: RYTEvidenceElevatedButtons(),
      ),
    );
  }
}
