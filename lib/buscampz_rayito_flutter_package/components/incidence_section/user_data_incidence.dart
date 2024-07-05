import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';

class UserDataIncidence extends StatelessWidget {
  final String image;
  final String title;
  final String address;
  final String route;
  const UserDataIncidence({
    super.key,
    required this.image,
    required this.title,
    required this.address,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bgBotLight,
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: AppColors.black.withOpacity(0.25),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.14),
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(image),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.sub3_14(AppColors.black),
                ),
                SizedBox(
                  width: 170,
                  child: Text(
                    address,
                    style:
                        AppTextStyles.s1_m_12(AppColors.black.withOpacity(0.6)),
                  ),
                ),
                Text(
                  route,
                  style: AppTextStyles.s1_m_12(AppColors.successLight),
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                const Icon(
                  Icons.check_circle_outline_rounded,
                  size: 56,
                  color: AppColors.successLight,
                ),
                Text(
                  'Resuelto',
                  style: AppTextStyles.s2_s_11(AppColors.successLight),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
