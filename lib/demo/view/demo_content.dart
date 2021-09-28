import 'package:flutter/material.dart';
import 'package:flutter_app_theme/demo/demo.dart';

class DemoContent extends StatelessWidget {
  const DemoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgets = <Widget>[
      const ColorSchemeWidget(),
      const Buttons(),
      const TopAppBar(),
      const TabBars(),
      const BottomNavigationBars(),
      const Options(),
      const Progress(),
      const Chips(),
      const Fabs(),
      const Texts(),
      const TextFields(),
    ];

    final items = <Widget>[];
    for (final widget in widgets) {
      items.addAll(<Widget>[const ComponentSpacer(), widget]);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(children: items),
    );
  }
}
