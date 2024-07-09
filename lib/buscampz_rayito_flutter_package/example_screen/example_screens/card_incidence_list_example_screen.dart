import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets_exports.dart';

class CardIncidenceListExampleScreen extends StatelessWidget {
  const CardIncidenceListExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Card Incidence List'),
      ),
      body: const _BodyCardIncidenceListExampleScreen(),
    );
  }
}

class _BodyCardIncidenceListExampleScreen extends StatelessWidget {
  const _BodyCardIncidenceListExampleScreen();

  @override
  Widget build(BuildContext context) {
    
    
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        children: [
          RYTCardIncidenceList(
            title: 'Problema en el Vehículo',
            address: '1901 Thornridge Cir. Shiloh,Hawaii 81063',
            date: '06:50 A.M - 7:10 A.M',
          ),
        
        ],
      ),
    );
  }
}
