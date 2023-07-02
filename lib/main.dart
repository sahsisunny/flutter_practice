import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/about_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.dark,
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily,
            primaryTextTheme: GoogleFonts.latoTextTheme()),
        darkTheme: ThemeData(
          brightness: Brightness.light,
        ),
        initialRoute: "/login",
        routes: {
          "/home": (context) => HomePage(),
          "/about": (context) => AboutPage(),
          "/login": (context) => LoginPage(),
        });
  }
}
