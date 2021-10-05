import 'package:flutter/material.dart';
import 'package:flutter_app_theme/features/components/components.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(label: 'Button'),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text('Enabled'),
        ),
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
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text('Disabled'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ElevatedButton(
              onPressed: null,
              child: Text('BUTTON'),
            ),
            TextButton(
              child: Text('BUTTON'),
              onPressed: null,
            ),
            OutlinedButton(
              onPressed: null,
              child: Text('BUTTON'),
            ),
          ],
        )
      ],
    );
  }
}
