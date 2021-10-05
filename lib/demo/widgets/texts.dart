import 'package:flutter/material.dart';
import 'package:flutter_app_theme/features/components/components.dart';

class Texts extends StatelessWidget {
  const Texts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Header(label: 'Text'),
        Text('Example Text'),
      ],
    );
  }
}
