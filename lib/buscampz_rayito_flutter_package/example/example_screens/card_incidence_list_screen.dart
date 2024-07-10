import 'package:flutter/material.dart';
import 'package:buscampz_flutter/generated/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/providers/providers.dart';

class CardIncidenceListScreen extends ConsumerWidget {
  const CardIncidenceListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorTheme = ref.watch(appColorThemeProvider);

    return Scaffold(
      backgroundColor: colorTheme.bgBot,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Card Incidence List'),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    const String imageExample =
        'https://doc.cerp.ideria.co/assets/images/image-a5238aed7050a0691758858b2569566d.jpg';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        children: [
          CardIncidenceList(
            title: S.of(context).vehicleProblem,
            address: S.of(context).addressExample,
            date: S.of(context).dateExample,
            image: imageExample,
          ),
          const SizedBox(height: 56),
          _IconChangeDarkMode(isDarkMode: isDarkMode),
        ],
      ),
    );
  }
}

class _IconChangeDarkMode extends ConsumerWidget {
  const _IconChangeDarkMode({
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: Icon(
          isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
          size: 56),
      onPressed: () {
        ref.read(isDarkModeProvider.notifier).update((state) => !state);
      },
    );
  }
}
