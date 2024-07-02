import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';

class BottomSheetButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function()? onTap;
  const BottomSheetButton({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const double sizeContainer = 98;

    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        width: sizeContainer,
        height: sizeContainer,
        decoration: BoxDecoration(
          color: AppColors.bgTopLight,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: AppColors.black.withOpacity(0.3),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: AppColors.black,
            ),
            const SizedBox(height: 4),
            Text(
              text,
              style: AppTextStyles.s1_s_12(AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
