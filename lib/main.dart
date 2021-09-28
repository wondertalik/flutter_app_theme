import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app_theme/core/core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        // primary: Color(0xFF3A009F),
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: colorScheme,
        textTheme: textTheme,
        primaryTextTheme: textTheme,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _Header(label: 'Color Scheme'),
              const _ColorSchme(),
              const _ComponentSpacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _Header(label: 'Button'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('BUTTON'),
                      ),
                      TextButton(
                        child: const Text('BUTTON'),
                        onPressed: () {},
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text('BUTTON'),
                      ),
                    ],
                  )
                ],
              ),
              const _ComponentSpacer(),
              const _Header(label: 'Top App Bar'),
              AppBar(
                title: const Text('Headline 6'),
                leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                actions: [
                  IconButton(icon: const Icon(Icons.share), onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.bookmark), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.search), onPressed: () {}),
                ],
              ),
              const _ComponentSpacer(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _ColorSchme extends StatelessWidget {
  const _ColorSchme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final halfWidth = constraints.maxWidth / 2;
      final thirdWidth = constraints.maxWidth / 3;
      return Column(
        children: [
          Row(
            children: [
              _ColorContainer(
                title: 'Primary',
                orderNumber: 1,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.primary,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
              _ColorContainer(
                title: 'Primary Variant',
                orderNumber: 2,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.primaryVariant,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
            ],
          ),
          Row(
            children: [
              _ColorContainer(
                title: 'Secondary',
                orderNumber: 3,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.secondary,
                textColor: Theme.of(context).colorScheme.onSecondary,
              ),
              _ColorContainer(
                title: 'Secondary Variant',
                orderNumber: 4,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.secondaryVariant,
                textColor: Theme.of(context).colorScheme.onSecondary,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                _ColorContainer(
                  title: 'Background',
                  orderNumber: 5,
                  height: 80,
                  width: thirdWidth,
                  backgroundColor: Theme.of(context).colorScheme.background,
                  textColor: Theme.of(context).colorScheme.onBackground,
                ),
                _ColorContainer(
                  title: 'Surface',
                  orderNumber: 6,
                  height: 80,
                  width: thirdWidth,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  textColor: Theme.of(context).colorScheme.onSurface,
                ),
                _ColorContainer(
                  title: 'Error',
                  orderNumber: 7,
                  height: 80,
                  width: thirdWidth,
                  backgroundColor: Theme.of(context).colorScheme.error,
                  textColor: Theme.of(context).colorScheme.onError,
                ),
              ],
            ),
          ),
          Row(
            children: [
              _ColorContainer(
                title: 'onPrimary',
                orderNumber: 3,
                height: 80,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                textColor: Theme.of(context).colorScheme.onSecondary,
              ),
              _ColorContainer(
                title: 'OnSecondary',
                orderNumber: 4,
                height: 80,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.onSecondary,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
            ],
          ),
          Row(
            children: [
              _ColorContainer(
                title: 'on Background',
                orderNumber: 5,
                height: 80,
                width: thirdWidth,
                backgroundColor: Theme.of(context).colorScheme.onBackground,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
              _ColorContainer(
                title: 'on Surface',
                orderNumber: 6,
                height: 80,
                width: thirdWidth,
                backgroundColor: Theme.of(context).colorScheme.onSurface,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
              _ColorContainer(
                title: 'on Error',
                orderNumber: 7,
                height: 80,
                width: thirdWidth,
                backgroundColor: Theme.of(context).colorScheme.onError,
                textColor: Theme.of(context).colorScheme.onSecondary,
              ),
            ],
          ),
        ],
      );
    });
  }
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.title,
    required this.width,
    required this.orderNumber,
    this.height = 110,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  final double width;
  final double height;
  final String title;
  final int orderNumber;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.2, color: Colors.grey.shade500),
        color: backgroundColor,
      ),
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                title,
                style: TextStyle(
                  color: textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8.0,
                top: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: textColor,
                    radius: 12,
                    child: Text(
                      orderNumber.toString(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      backgroundColor.toHexString(),
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ComponentSpacer extends StatelessWidget {
  const _ComponentSpacer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        label.toUpperCase(),
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
