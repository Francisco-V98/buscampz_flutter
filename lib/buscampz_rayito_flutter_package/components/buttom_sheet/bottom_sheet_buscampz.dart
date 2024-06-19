import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class BottomSheetBuscampz extends StatelessWidget {
  final bool withTitle;
  final String titleBs;
  const BottomSheetBuscampz({
    super.key,
    this.withTitle = false,
    this.titleBs = 'Title Here',
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
          withTitle
              ? Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    titleBs,
                    style: AppTextStyles.sub1_18(AppColors.black),
                  ),
                )
              : const SizedBox.shrink(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: GroupButton(),
          ),
        ],
      ),
    );
  }
}