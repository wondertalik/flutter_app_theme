import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_theme/features/components/components.dart';
import 'package:flutter_app_theme/features/toggle_theme/toggle_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleThemeContent extends StatelessWidget {
  const ToggleThemeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toggleThemeCubit = context.read<ToggleThemeCubit>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Header(label: 'Toggle Theme'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InputChip(
                        label: Text(describeEnum(ToggleThemeVariant.custom)),
                        selected: toggleThemeCubit.state.themeVariant ==
                            ToggleThemeVariant.custom,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InputChip(
                        label: Text(
                            describeEnum(ToggleThemeVariant.defaultTheme)
                                .replaceAll('Theme', '')),
                        selected: toggleThemeCubit.state.themeVariant ==
                            ToggleThemeVariant.defaultTheme,
                        onSelected: (value) {
                          toggleThemeCubit.changeToDefaultTheme();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  ColorContainer(
                    title: 'ToggleableActiveColor',
                    orderNumber: 1,
                    width: constraints.maxWidth,
                    backgroundColor: Theme.of(context).toggleableActiveColor,
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    onColorChanged: (color) {
                      context
                          .read<ToggleThemeCubit>()
                          .changeToggleableActiveColor(color);
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
