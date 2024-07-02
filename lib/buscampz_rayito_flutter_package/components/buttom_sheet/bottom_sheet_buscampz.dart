import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';

class BottomSheetBuscampz extends StatelessWidget {
  final String? title;
  const BottomSheetBuscampz({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bgBotLight,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.15),
            blurRadius: 24,
            offset: const Offset(0, -8),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
              height: 6,
              width: 64,
              decoration: BoxDecoration(
                color: AppColors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          if (title != null)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                title!,
                style: AppTextStyles.sub1_18(AppColors.black),
              ),
            ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: ButtonGroupBottomSheet(),
          ),
        ],
      ),
    );
  }
}
