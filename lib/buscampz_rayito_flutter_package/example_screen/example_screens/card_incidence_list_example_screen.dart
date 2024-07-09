import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/providers/providers.dart';

class CardIncidenceListExampleScreen extends ConsumerWidget {
  const CardIncidenceListExampleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorTheme = ref.watch(appColorThemeProvider);

    return Scaffold(
      backgroundColor: colorTheme.bgBot,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Card Incidence List'),
      ),
      body: const _BodyCardIncidenceListExampleScreen(),
    );
  }
}

class _BodyCardIncidenceListExampleScreen extends ConsumerWidget {
  const _BodyCardIncidenceListExampleScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        children: [
          const RYTCardIncidenceList(
            title: 'Problema en el Vehículo',
            address: '1901 Thornridge Cir. Shiloh,Hawaii 81063',
            date: '06:50 A.M - 7:10 A.M',
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
