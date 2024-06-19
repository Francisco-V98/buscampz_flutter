import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardIncidenceListScreen extends ConsumerWidget {
  const CardIncidenceListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorTheme = ref.watch(appColorThemeProvider);

    return Scaffold(
      backgroundColor: colorTheme.bgBot,
      appBar:
          AppBar(centerTitle: true, title: const Text('Card Incidence List')),
      body: const _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        children: [
          const CardIncidenceList(
            title: 'Problema en el Vehículo',
            address: '1901 Thornridge Cir. Shiloh,Hawaii 81063',
            date: '06:50 A.M - 7:10 A.M',
            image:
                'https://doc.cerp.ideria.co/assets/images/image-a5238aed7050a0691758858b2569566d.jpg',
          ),
          const SizedBox(height: 56),
          IconButton(
              icon: Icon( 
                isDarkMode 
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined, 
              size: 56 ),
              onPressed: () {
                ref.read(isDarkModeProvider.notifier).update((state) => !state);
              },
            ),
        ],
      ),
    );
  }
}


