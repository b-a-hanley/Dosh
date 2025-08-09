import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'languages/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; 
import 'package:provider/provider.dart';
import 'providers/colour_provider.dart';
import 'providers/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => ColourProvider()),
      ],
      child: DoshPot(),
    ),
  );
}

class DoshPot extends StatelessWidget {
  const DoshPot({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DoshPot',
      supportedLocales: L10n.all, //calls class of available languages
      locale: localeProvider.locale, //use selected locale
      localizationsDelegates: const [
        AppLocalizations.delegate, //controls app localisations
        GlobalMaterialLocalizations.delegate, //control material localisations
        GlobalWidgetsLocalizations.delegate, //controls text direction
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(0,0,255, 100)),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
    
  }
}