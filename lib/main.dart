import 'package:flutter/material.dart';
import 'homepage.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:l10n_example/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portofolio page ',


      //Localization
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,


      //   localizationsDelegates: const [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // // Supported locales
      // supportedLocales: const [
      //   Locale('en', ''), // English
      //   Locale('es', ''), // Spanish
      // ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
