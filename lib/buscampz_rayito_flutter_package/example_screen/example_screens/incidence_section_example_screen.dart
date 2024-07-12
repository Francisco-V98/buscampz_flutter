import 'package:flutter/material.dart';
import 'package:buscampz_flutter/generated/l10n.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class IncidenceSectionExampleScreen extends StatelessWidget {
  const IncidenceSectionExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Incidence Section'),
      ),
      body: const _BodyIncidenceSectionExampleScreen(),
    );
  }
}

class _BodyIncidenceSectionExampleScreen extends StatelessWidget {
  const _BodyIncidenceSectionExampleScreen();

  @override
  Widget build(BuildContext context) {
    const imageExample =
        'https://doc.cerp.ideria.co/assets/images/image-a5238aed7050a0691758858b2569566d.jpg';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Container(
            color: AppColors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: RYTUserDataIncidence(
                image: imageExample,
                title: S.of(context).freddyRodriguez,
                address: S.of(context).colegioSanSebastian,
                route: S.of(context).rutaAB32,
              ),
            ),
          ),
          const SizedBox(height: 24),
          RYTDetailIncidence(
            description: S.of(context).incidenciaDescription,
          ),
        ],
      ),
    );
  }
}
