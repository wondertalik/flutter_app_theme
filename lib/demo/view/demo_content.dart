import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_theme/demo/demo.dart';
import 'package:flutter_app_theme/features/color_scheme/color_scheme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoContent extends StatelessWidget {
  const DemoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgets = <Widget>[
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
    for (var i = 0; i < widgets.length; i++) {
      if (i == 0) {
        items.add(widgets[i]);
      } else {
        items.addAll(<Widget>[const ComponentSpacer(), widgets[i]]);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(
            height: 70,
            child: Row(
              children: [
                BlocBuilder<DemoColorCubit, DemoColorState>(
                  builder: (context, state) {
                    return ActionChip(
                      avatar: const Icon(Icons.expand_more),
                      label: Text(
                          'Color Scheme:  ${describeEnum(state.schemeVariant).replaceAll('Scheme', '')}'),
                      onPressed: () {
                        Navigator.of(context).push(ColorSchemePage.route());
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(children: items),
          ),
        ],
      ),
    );
  }
}
