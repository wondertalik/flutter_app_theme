import 'package:flutter/material.dart';
import 'package:flutter_app_theme/features/components/components.dart';

class Fabs extends StatelessWidget {
  const Fabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(label: 'Fabs'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton.extended(
              heroTag: 'extended',
              icon: const Icon(Icons.edit),
              label: Text('Edit'.toUpperCase()),
              onPressed: () {},
            ),
            FloatingActionButton(
              heroTag: 'mini',
              mini: true,
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
            FloatingActionButton(
              heroTag: 'normal',
              child: const Icon(Icons.favorite),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
