import 'package:flutter/material.dart';
import 'package:flutter_app_theme/demo/demo.dart';

class Progress extends StatelessWidget {
  const Progress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(label: 'Progress Indicator'),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Circular'),
                  Text('Linear'),
                ],
              ),
            ),
            Row(
              children: const [
                Padding(
                  child: CircularProgressIndicator(),
                  padding: EdgeInsets.only(right: 24.0),
                ),
                Expanded(child: LinearProgressIndicator()),
              ],
            )
          ],
        ),
      ],
    );
  }
}
