import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:flutter/material.dart';

class IncidenceSectionScreen extends StatelessWidget {
  const IncidenceSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      appBar: AppBar(centerTitle: true, title: const Text('AppBar')),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Container(
            color: AppColors.white,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: UserDataIncidence(
                image:
                    'https://doc.cerp.ideria.co/assets/images/image-a5238aed7050a0691758858b2569566d.jpg',
                title: 'Freddy Rodríguez',
                address: 'Colegio San Sebastián de los Altos Campos.',
                route: 'Ruta AB32-5',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
