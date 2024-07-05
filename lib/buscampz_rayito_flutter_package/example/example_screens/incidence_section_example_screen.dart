import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';
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
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: UserDataIncidence(
                image: imageExample,
                title: 'Freddy Rodríguez',
                address: 'Colegio San Sebastián de los Altos Campos.',
                route: 'Ruta AB32-5',
              ),
            ),
          ),
          const SizedBox(height: 24),
          const DetailIncidence(
            description:
                'Hola a todos, tuve un inconveniente con la llanta, la estoy reparando y luego continúo con la ruta. Voy a llegar un poco más tarde de lo acordado. Pueden chequear la App para ver el recorrido que voy a estar haciendo.',
          ),
        ],
      ),
    );
  }
}
