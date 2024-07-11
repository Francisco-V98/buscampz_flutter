import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/ryt_app_text_style.dart';

class RYTCardIncidenceList extends StatelessWidget {
  final String? title;
  final String? address;
  final String? date;
  final String? image;
  const RYTCardIncidenceList({
    super.key,
    required this.title,
    required this.address,
    required this.date,
    this.image,
  });

  @override
  Widget build(BuildContext context) {

    const String imageExample =
        'https://doc.cerp.ideria.co/assets/images/image-a5238aed7050a0691758858b2569566d.jpg';

    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: AppColors.bgTopLight,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          CircleAvatar(
            radius: 24,
            backgroundImage: image!.isEmpty
                ? const NetworkImage(imageExample)
                : NetworkImage(image!),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title ?? 'error title',
                style: RYTAppTextStyles.sub3_14(AppColors.black),
              ),
              Text(
                address ?? 'error address',
                style: RYTAppTextStyles.s1_m_12(
                    AppColors.black.withOpacity(0.5)),
              ),
              Text(
                date ?? 'error date',
                style: RYTAppTextStyles.s3_m_10(AppColors.infoLight),
              ),
            ],
          )
        ],
      ),
    );
  }
}
