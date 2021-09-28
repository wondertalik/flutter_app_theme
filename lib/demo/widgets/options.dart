import 'package:flutter/material.dart';
import 'package:flutter_app_theme/demo/demo.dart';

class Options extends StatelessWidget {
  const Options({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Header(
                  label: 'Switch',
                ),
                Row(
                  children: [
                    const Switch(value: false, onChanged: null),
                    Switch(value: true, onChanged: (val) {}),
                    Switch(value: false, onChanged: (val) {}),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Header(
                  label: 'CheckBox',
                ),
                Row(
                  children: [
                    const Checkbox(value: false, onChanged: null),
                    Checkbox(value: true, onChanged: (val) {}),
                    Checkbox(value: false, onChanged: (val) {}),
                  ],
                ),
              ],
            ),
          ],
        ),
        const ComponentSpacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Header(
                  label: 'Radio button',
                ),
                Row(
                  children: [
                    const Radio(
                      groupValue: true,
                      value: false,
                      onChanged: null,
                    ),
                    Radio(
                      groupValue: true,
                      value: true,
                      onChanged: (val) {},
                    ),
                    Radio(
                      groupValue: true,
                      value: false,
                      onChanged: (val) {},
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Header(
                  label: 'Icon button',
                ),
                Row(
                  children: [
                    const IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: null,
                    ),
                    IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
