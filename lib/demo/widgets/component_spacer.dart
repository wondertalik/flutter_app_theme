import 'package:flutter/material.dart';

class ComponentSpacer extends StatelessWidget {
  const ComponentSpacer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
    );
  }
}
