import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class DetailIncidence extends StatelessWidget {
  final String description;
  const DetailIncidence({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.bgTopLight,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 4),
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 24, 32, 0),
        child: Column(
          children: [
            Text(
              description,
              style: AppTextStyles.p1_m_16(AppColors.black),
              textAlign: TextAlign.center,
            ),
            //TODO need to add the btn of jesus
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  _IconAndNumber(Icons.visibility_outlined, 3),
                  Spacer(),
                  _IconAndNumber(Icons.chat_bubble_outline, 8),
                  SizedBox(width: 24),
                  _IconAndNumber(Icons.add_photo_alternate_outlined, 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconAndNumber extends StatelessWidget {
  final IconData icon;
  final int number;
  const _IconAndNumber(this.icon, this.number);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16),
        Text(
          number.toString(),
          style: AppTextStyles.p2_m_14(AppColors.black),
        )
      ],
    );
  }
}