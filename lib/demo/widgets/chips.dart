import 'package:flutter/material.dart';
import 'package:flutter_app_theme/features/components/components.dart';

class Chips extends StatelessWidget {
  const Chips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(label: 'Chips'),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Chip(label: Text('Body 2')),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Chip(label: Text('Body 2')),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Chip(label: Text('Body 2')),
            ),
          ],
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Chip(label: Text('Body 2')),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Chip(label: Text('Body 2')),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Chip(label: Text('Body 2')),
            ),
          ],
        ),
      ],
    );
  }
}
