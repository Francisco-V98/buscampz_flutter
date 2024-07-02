import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      appBar: AppBar(centerTitle: true, title: const Text('Buttom Sheet')),
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
      child: Center(
        child: Column(
          children: [
            BottomSheetButton(
              icon: Icons.add_circle_outline,
              text: 'nuevo',
              onTap: () {},
            ),
            const SizedBox(height: 24),
            const ButtonGroupBottomSheet(),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  barrierColor: AppColors.black.withOpacity(0.25),
                  isDismissible: true,
                  builder: (context) => const BottomSheetBuscampz(
                    title: 'Estado de la Incidencia',
                  ),
                );
              },
              child: Text(
                'Open BottomSheet',
                style: AppTextStyles.btn_14(AppColors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
