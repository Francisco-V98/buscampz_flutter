import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/router/routers.dart';

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
      children: [
        _CustomListTile(
          title: 'Example',
          subTitle: 'Example Screen',
          location: AppRoutesPaths.example.path,
        ),
        const _CustomListTile(
          title: 'Incident TextField',
          subTitle: 'Incident TextField Screen',
          location: '/incidentTextField',
        ),
        const _CustomListTile(
          title: 'DetailIncidentTextField Screen',
          subTitle: 'DetailIncident TextField Screen',
          location: '/detailIncidenceTextForm',
        ),
        const _CustomListTile(
          title: 'SendEvidence Button',
          subTitle: 'SendEvidence Button Screen',
          location: '/sendEvidenceButton',
        ),
        const _CustomListTile(
          title: 'ResponseClient Card',
          subTitle: 'ResponseClient Card Screen',
          location: '/responseClientCard',
        ),
        const _CustomListTile(
          title: 'ButtonSend With TextField',
          subTitle: 'ButtonSend With TextField Screen',
          location: '/buttonSendTextField',
        ),
        _CustomListTile(
          title: 'TextFieldIncidentes',
          subTitle: 'TextFieldIncidentes Screen',
          location: AppRoutesPaths.textFieldIncidentes.path,
        ),
        _CustomListTile(
          title: 'AppBar',
          subTitle: 'Example Screen AppBar',
          location: AppRoutesPaths.appbar.path,
        ),
        _CustomListTile(
          title: 'Card Incidence',
          subTitle: 'Example Screen Card Incidence',
          location: AppRoutesPaths.cardIncidence.path,
        ),
        _CustomListTile(
          title: 'Incidence Section',
          subTitle: 'data user, detail incidence',
          location: AppRoutesPaths.incidenceSection.path,
        ),
        _CustomListTile(
          title: 'ButtonSheet Section',
          subTitle: 'buttom sheet and components',
          location: AppRoutesPaths.bottomSheetSection.path,
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
