import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app_theme/demo/demo.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = TextTheme(
      headline1: GoogleFonts.roboto(
          fontSize: 95, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      headline2: GoogleFonts.roboto(
          fontSize: 59, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      headline3: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w400),
      headline4: GoogleFonts.roboto(
          fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headline5: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w400),
      headline6: GoogleFonts.roboto(
          fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      subtitle1: GoogleFonts.roboto(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      subtitle2: GoogleFonts.roboto(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyText1: GoogleFonts.lato(
          fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyText2: GoogleFonts.lato(
          fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      button: GoogleFonts.lato(
          fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      caption: GoogleFonts.lato(
          fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      overline: GoogleFonts.lato(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    );

    final ColorScheme colorScheme = ColorScheme.light(
        // primary: Colors.red, // Color(0xFF3A009F),
        // primaryVariant: Color(0xFF),
        // secondary: Color(0xFF),
        // secondaryVariant: Color(0xFF),
        // surface: Color(0xFF),
        // background: Color(0xFF),
        // error: Color(0xFF),
        // onPrimary: Color(0xFF),
        // onSecondary: Color(0xFF),
        // onSurface: Color(0xFF),
        // onBackground: Color(0xFF),
        // onError: Color(0xFF),
        // brightness: Brightness.light,
        );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: colorScheme,
        textTheme: textTheme,
        primaryTextTheme: textTheme,
      ),
      home: const DemoPage(
        title: 'Flutter demo theme',
      ),
    );
  }
}
