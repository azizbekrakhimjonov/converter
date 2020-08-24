
import 'package:converter/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';

import 'conf.dart';
import 'localization.dart';
import 'main_screen.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerSingleton(AppState());
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      //theme
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: backgroundColor,
        backgroundColor: backgroundColor,
        accentColor: Colors.grey.shade900,
        fontFamily: 'Raleway',
        dialogTheme: DialogTheme(
          backgroundColor: Colors.grey.shade900,
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: Colors.grey.shade900,
          contentTextStyle: Theme.of(context).textTheme.bodyText2.apply(
            color: Colors.white70
          )
        ),
      ),
      //localization
      onGenerateTitle: (BuildContext context) => AppLocalizations.of(context).appTitle,
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [ Locale('en'), ],
    );
  }

}
