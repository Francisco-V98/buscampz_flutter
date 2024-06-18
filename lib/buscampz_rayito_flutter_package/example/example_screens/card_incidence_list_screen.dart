import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CardIncidenceListScreen extends StatelessWidget {
  const CardIncidenceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      appBar:
          AppBar(centerTitle: true, title: const Text('Card Incidence List')),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: CardIncidenceList(
        title: 'Problema en el Vehículo',
        address: '1901 Thornridge Cir. Shiloh,Hawaii 81063',
        date: '06:50 A.M - 7:10 A.M',
        image:
            'https://doc.cerp.ideria.co/assets/images/image-a5238aed7050a0691758858b2569566d.jpg',
      ),
    );
  }
}


