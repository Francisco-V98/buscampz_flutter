import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';

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
            //TODO: need to add the btn of jesus
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  _BottomIconAndNumberDetailIncidence(Icons.visibility_outlined, 3),
                  Spacer(),
                  _BottomIconAndNumberDetailIncidence(Icons.chat_bubble_outline, 8),
                  SizedBox(width: 24),
                  _BottomIconAndNumberDetailIncidence(Icons.add_photo_alternate_outlined, 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomIconAndNumberDetailIncidence extends StatelessWidget {
  final IconData icon;
  final int numberOfInteractions;
  const _BottomIconAndNumberDetailIncidence(this.icon, this.numberOfInteractions);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16),
        Text(
          numberOfInteractions.toString(),
          style: AppTextStyles.p2_m_14(AppColors.black),
        )
      ],
    );
  }
}