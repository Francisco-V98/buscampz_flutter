import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';

class AppBarBuscampz extends StatelessWidget {
  final Color? background;
  final String title;
  final IconData? iconRight;
  final IconData? iconLeft;

  const AppBarBuscampz({
    super.key,
    this.background,
    required this.title,
    this.iconRight,
    this.iconLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      color: background ?? Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconLeft != null
                ? _IconAppBar(iconLeft!)
                : const SizedBox(height: 48, width: 48),
            Text(title, style: AppTextStyles.h4_20(AppColors.black)),
            iconRight != null
                ? _IconAppBar(iconRight!)
                : const SizedBox(height: 48, width: 48),
          ],
        ),
      ),
    );
  }
}

class _IconAppBar extends StatelessWidget {
  final IconData icon;
  const _IconAppBar(this.icon);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: Icon(
        icon,
        color: AppColors.black,
      ),
    );
  }
}

class CircleImageAppBar extends StatelessWidget {
  final String image;

  const CircleImageAppBar({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    const double sizeCircleImage = 32;
    return Container(
      width: sizeCircleImage,
      height: sizeCircleImage,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: AppColors.black,
          width: 2,
        ),
      ),
    );
  }
}