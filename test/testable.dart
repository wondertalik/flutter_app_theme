import 'package:flutter/material.dart';

Widget makeTestableWidget(
    {required Widget child,
    List<NavigatorObserver> navigatorObservers = const []}) {
  return MaterialApp(
    home: child,
    navigatorObservers: navigatorObservers,
  );
}
