import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class AppbarScreen extends StatelessWidget {
  const AppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(centerTitle: true, title: const Text('AppBar')),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          AppBarBuscampz(title: 'Hola, Pedro'),
          SizedBox(height: 24),
          AppBarBuscampz(
            title: 'title',
            background: AppColors.white,
            iconRight: Icons.circle_notifications,
          ),
          SizedBox(height: 24),
          AppBarBuscampz(
            title: 'title',
            iconLeft: Icons.arrow_back_ios,
            iconRight: Icons.circle_notifications,
          ),
          SizedBox(height: 24),
          AppBarBuscampz(
            title: 'title',
            iconLeft: Icons.arrow_back_ios,
            background: AppColors.white,
          ),
        ],
      ),
    );
  }
}
