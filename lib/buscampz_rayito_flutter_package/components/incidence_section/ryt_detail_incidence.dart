import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
//jesus has to add this import to the barrel file
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/elevatedButtonEvidencia/content/send_evidence_elevated_button.dart';

class RYTDetailIncidence extends StatelessWidget {
  final String description;
  final bool withBottomImage;
  const RYTDetailIncidence({
    super.key,
    required this.description,
    this.withBottomImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.bgTopLight, boxShadow: [
        BoxShadow(
          color: AppColors.black.withOpacity(0.1),
          blurRadius: 4,
          offset: const Offset(0, 4),
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 24, 32, 0),
        child: Column(
          children: [
            Text(
              description,
              style: AppTextStyles.p1_m_16(AppColors.black),
              textAlign: TextAlign.center,
            ),
            withBottomImage
                ? const SendEvidenceElevatedButton()
                : const SizedBox.shrink(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  _BottomIconAndNumberDetailIncidence(
                      Icons.visibility_outlined, 3),
                  Spacer(),
                  _BottomIconAndNumberDetailIncidence(
                      Icons.chat_bubble_outline, 8),
                  SizedBox(width: 24),
                  _BottomIconAndNumberDetailIncidence(
                      Icons.add_photo_alternate_outlined, 1),
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
  const _BottomIconAndNumberDetailIncidence(
      this.icon, this.numberOfInteractions);

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
