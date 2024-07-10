import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class RYTButtonSendContent extends StatelessWidget {
  final Icon icon;
  final VoidCallback? onPressed;

  const RYTButtonSendContent({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            offset: Offset(0, 4),
            color: Color.fromARGB(255, 185, 190, 194),
          ),
        ],
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: icon,
        onPressed: onPressed, 
      ),
    );
  }
}
