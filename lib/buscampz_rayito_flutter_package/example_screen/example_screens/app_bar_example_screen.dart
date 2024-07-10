import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class AppbarExampleScreen extends StatelessWidget {
  const AppbarExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(centerTitle: true, title: const Text('AppBar')),
      body: const _BodyAppBarExampleScreen(),
    );
  }
}

class _BodyAppBarExampleScreen extends StatelessWidget {
  const _BodyAppBarExampleScreen();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          RYTAppBar(title: 'Hola, Pedro'),
          SizedBox(height: 24),
          RYTAppBar(
            title: 'title',
            background: AppColors.white,
            iconRight: Icons.circle_notifications,
          ),
          SizedBox(height: 24),
          RYTAppBar(
            title: 'Hola, Pedro',
            iconLeft: Icons.arrow_back_ios,
            iconRight: Icons.circle_notifications,
          ),
          SizedBox(height: 24),
          RYTAppBar(
            title: 'Hola, Pedro',
            iconLeft: Icons.arrow_back_ios,
            background: AppColors.white,
          ),
        ],
      ),
    );
  }
}
