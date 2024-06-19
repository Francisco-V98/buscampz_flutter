import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/text_style/app_text_style.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardIncidenceList extends ConsumerWidget {
  final String title;
  final String address;
  final String date;
  final String image;
  const CardIncidenceList({
    super.key,
    required this.title,
    required this.address,
    required this.date,
    required this.image,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorTheme = ref.watch(appColorThemeProvider);
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: colorTheme.bgTop,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: colorTheme.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(image),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyles.sub3_14(colorTheme.blackVariant),
              ),
              Text(
                address,
                style: AppTextStyles.s1_m_12(colorTheme.blackVariant.withOpacity(0.5)),
              ),
              Text(
                date,
                style: AppTextStyles.s3_m_10(colorTheme.info),
              ),
            ],
          )
        ],
      ),
    );
  }
}
