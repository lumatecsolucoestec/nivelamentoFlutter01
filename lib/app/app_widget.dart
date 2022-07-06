import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['lib/i18n'];
    return MaterialApp.router(
      localizationsDelegates: [
        LocalJsonLocalization.delegate,
      ],
      locale: Locale('pt', 'BR'),
      debugShowCheckedModeBanner: false,
      title: 'Nivelamento Lumatec',
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
