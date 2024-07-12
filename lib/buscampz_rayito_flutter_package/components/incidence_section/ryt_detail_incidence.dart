import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/elevated_button/ryt_elevated_button.dart';
import 'package:buscampz_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/ryt_app_text_style.dart';
//TODO: jesus has to add this import to the barrel file

class RYTDetailIncidence extends StatelessWidget {
  final String? description;
  final bool withBottomImage;
  final int? numberOfViews;
  final int? numberOfComments;
  final int? numberOfImagess;
  const RYTDetailIncidence({
    super.key,
    required this.description,
    this.withBottomImage = false,
    this.numberOfViews,
    this.numberOfComments,
    this.numberOfImagess,
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
              description ?? 'Error getting description',
              style: RYTAppTextStyles.p1_m_16(AppColors.black),
              textAlign: TextAlign.center,
            ),
            //TODO: Waiting for Jesus to add the parameters to the button
            withBottomImage
                ? RYTButton(
                    text: S.of(context).sendEvidence,
                    horizontalPadding: 40.0,
                    onPressed: () {
                      //TODO: Action when pressing the button
                    },
                  )
                : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  // Icon and number of user views
                  _BottomIconAndNumberDetailIncidence(
                    Icons.visibility_outlined,
                    numberOfViews,
                  ),
                  const Spacer(),

                  // Icon and number of user comments
                  _BottomIconAndNumberDetailIncidence(
                    Icons.chat_bubble_outline,
                    numberOfComments,
                  ),
                  const SizedBox(width: 24),

                  // Icon and number of images uploaded by the driver
                  _BottomIconAndNumberDetailIncidence(
                    Icons.add_photo_alternate_outlined,
                    numberOfImagess,
                  ),
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
  final int? numberOfInteractions;
  const _BottomIconAndNumberDetailIncidence(
      this.icon, this.numberOfInteractions);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16),
        numberOfInteractions != null
            ? Text(
                numberOfInteractions.toString(),
                style: RYTAppTextStyles.p2_m_14(AppColors.black),
              )
            : Text(
                '0',
                style: RYTAppTextStyles.p2_m_14(AppColors.black),
              ),
      ],
    );
  }
}
