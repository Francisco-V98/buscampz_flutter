import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class AppBarBuscampz extends StatelessWidget {
  final bool withBackground;
  final bool withIconRight;
  final IconData iconRight;
  final bool withIconLeft;
  final IconData iconLeft;
  final String title;
  // final String image;
  const AppBarBuscampz({
    super.key,
    this.withBackground = true,
    required this.title,
    // required this.image,
    this.withIconRight = true,
    this.withIconLeft = true,
    this.iconRight = Icons.menu_rounded,
    this.iconLeft = Icons.menu_rounded,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      color: withBackground ? AppColors.bgTopLight : Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            withIconLeft
                ? _IconAppBar(iconLeft)
                : const SizedBox(height: 48, width: 48),
            Text(
              title,
              style: AppTextStyles.h4_20(AppColors.black)
            ),
            withIconRight
                ? _IconAppBar(iconRight)
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

class CircleWithImageAndBorder extends StatelessWidget {
  final String image;

  const CircleWithImageAndBorder({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
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
