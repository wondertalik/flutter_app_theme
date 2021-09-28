import 'package:flutter/material.dart';
import 'package:flutter_app_theme/demo/demo.dart';

class DemoContent extends StatelessWidget {
  const DemoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ColorSchemeWidget(),
            ComponentSpacer(),
            Buttons(),
            ComponentSpacer(),
            TopAppBar(),
            ComponentSpacer(),
            ComponentSpacer(),
            Options(),
            ComponentSpacer(),
            Progress(),
            ComponentSpacer(),
            Chips(),
            ComponentSpacer(),
            Fabs(),
            ComponentSpacer(),
            Texts(),
            ComponentSpacer(),
            TextFields(),
          ],
        ),
      ),
    );
  }
}
