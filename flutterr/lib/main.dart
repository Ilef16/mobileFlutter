import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutterr/pages/Index.page.dart';
import 'package:flutterr/pages/contact.page.dart';
import 'package:flutterr/pages/parcour.page.dart';
import 'package:flutterr/pages/passion.page.dart';
import 'package:flutterr/pages/competance.page.dart';
import 'package:flutterr/pages/contacts.page.dart';
import 'package:flutterr/theme/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class ThemeManager extends ChangeNotifier {

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeManager>(
          create: (_) => ThemeManager(),
        ),
      ],
      child: MaterialApp(
        routes: {
          '/index': (context) => Index(),
          '/parcour': (context) => parcour(),
          '/competance': (context) => competencePage(),
          '/passion': (context) => passion(),
          '/portfolio': (context) => contact(),
          '/contacts' :(context) =>ContactsPage(),
        },
        debugShowCheckedModeBanner: false,

       /* theme:ThemeData(brightness: Brightness.light),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.cyan,
          primaryColor: Colors.orange,
          hintColor : Colors.orangeAccent,
          
          ),

        */
        theme: lightMode,
        home: AnimatedSplashScreen(splash: Icons.star_border_purple500,
        duration: 3000,
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.white,nextScreen: Index()),
      ),
    );
  }
}