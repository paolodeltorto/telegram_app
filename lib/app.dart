import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telegram_app/di/dependency_injector.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => DependencyInjector(
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Telegram App',
        theme: _theme(context),
        darkTheme: _darkTheme(context),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ));

  ThemeData _theme(BuildContext context) => ThemeData(
      primaryColor: Colors.lightBlue,
      primaryColorDark: Colors.blue,
      //primaryColorBrightness: Brightness.dark,
      colorScheme:
          Theme.of(context).colorScheme.copyWith(secondary: Colors.lightBlue),
      brightness: Brightness.light,
      appBarTheme:
          const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light));

  ThemeData _darkTheme(BuildContext context) => ThemeData.dark().copyWith(
      colorScheme:
          Theme.of(context).colorScheme.copyWith(secondary: Colors.lightBlue),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ));
}
