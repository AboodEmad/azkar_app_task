import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:state_full_app/screens/home_screen.dart';
import 'package:state_full_app/screens/info_screen.dart';
import 'package:state_full_app/screens/lunch_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("ar"),
        Locale("en")
      ],
      locale: const Locale("ar"),
      initialRoute: "/lunch_screen",
      routes: {
        "/lunch_screen" : (context) => const LunchScreen(),
        "/home_screen" : (context) => const HomeScreen(),
        "/info_screen" : (context) => InfoScreen(),
      },
    );
  }
}
