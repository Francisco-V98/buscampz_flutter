import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListComponentsScreen extends StatelessWidget {
  const ListComponentsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _Body());
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTile(
          title: 'Example',
          subTitle: 'Example Screen',
          location: '/example',
        ),
        _CustomListTile(
          title: 'TextFieldIncidentes',
          subTitle: 'TextFieldIncidentes Screen',
          location: '/textFieldIncidentes',
        ),
        _CustomListTile(
          title: 'AppBar',
          subTitle: 'Example Screen AppBar',
          location: '/appbar',
        ),
        _CustomListTile(
          title: 'Card Incidence',
          subTitle: 'Example Screen Card Incidence',
          location: '/cardIncidence',
        ),
        _CustomListTile(
          title: 'Incidence Section',
          subTitle: 'data user, detail incidence',
          location: '/incidenceSection',
        ),
        _CustomListTile(
          title: 'ButtonSheet Section',
          subTitle: 'buttom sheet and components',
          location: '/buttomSheetSection',
        ),
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;

  const _CustomListTile({
    required this.title,
    required this.subTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}
