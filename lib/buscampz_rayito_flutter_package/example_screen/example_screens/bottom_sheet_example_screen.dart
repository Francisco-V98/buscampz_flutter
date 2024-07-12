import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets_exports.dart';
import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/ryt_app_text_style.dart';

class BottomSheetExampleScreen extends StatelessWidget {
  const BottomSheetExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      appBar: AppBar(centerTitle: true, title: const Text('Buttom Sheet')),
      body: const _BodyBottomSeetExampleScreen(),
    );
  }
}

class _BodyBottomSeetExampleScreen extends StatelessWidget {
  const _BodyBottomSeetExampleScreen();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Center(
        child: Column(
          children: [
            const RYTBottomSheet(),
            const SizedBox(height: 24),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  barrierColor: AppColors.black.withOpacity(0.25),
                  isDismissible: true,
                  builder: (context) => RYTBottomSheet(
                    title: 'Estado de la Incidencia',
                    buttonList: [
                      RYTBottomSheetButton(
                        icon: Icons.add_circle_outline,
                        text: 'nuevo',
                        onTap: () {},
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'Open BottomSheet',
                style: RYTAppTextStyles.btn_14(AppColors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
