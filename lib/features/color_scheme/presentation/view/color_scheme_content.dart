import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_theme/demo/demo.dart';
import 'package:flutter_app_theme/features/color_scheme/color_scheme.dart';
import 'package:flutter_app_theme/features/components/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorSchemeContent extends StatelessWidget {
  const ColorSchemeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final demoColorCubit = context.read<ColorSchemeCubit>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LayoutBuilder(builder: (context, constraints) {
        final halfWidth = constraints.maxWidth / 2;
        final thirdWidth = constraints.maxWidth / 3;
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Header(label: 'Color Scheme'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InputChip(
                        label: Text(describeEnum(ColorSchemeVariant.custom)),
                        selected: demoColorCubit.state.schemeVariant ==
                            ColorSchemeVariant.custom,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InputChip(
                        label: Text(
                            describeEnum(ColorSchemeVariant.defaultScheme)
                                .replaceAll('Scheme', '')),
                        selected: demoColorCubit.state.schemeVariant ==
                            ColorSchemeVariant.defaultScheme,
                        onSelected: (value) {
                          demoColorCubit.changeDefaultScheme();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InputChip(
                        label: Text(describeEnum(ColorSchemeVariant.light)),
                        selected: demoColorCubit.state.schemeVariant ==
                            ColorSchemeVariant.light,
                        onSelected: (value) {
                          demoColorCubit.changeToLight();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InputChip(
                        label: Text(describeEnum(ColorSchemeVariant.dark)),
                        selected: demoColorCubit.state.schemeVariant ==
                            ColorSchemeVariant.dark,
                        onSelected: (value) {
                          demoColorCubit.changeToDark();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InputChip(
                        label: Text(
                            describeEnum(ColorSchemeVariant.highContrastLight)),
                        selected: demoColorCubit.state.schemeVariant ==
                            ColorSchemeVariant.highContrastLight,
                        onSelected: (value) {
                          demoColorCubit.changeToHighContrastLight();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InputChip(
                        label: Text(
                            describeEnum(ColorSchemeVariant.highContrastDark)),
                        selected: demoColorCubit.state.schemeVariant ==
                            ColorSchemeVariant.highContrastDark,
                        onSelected: (value) {
                          demoColorCubit.changeToHighContrastDark();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  ColorContainer(
                    title: 'Primary',
                    orderNumber: 1,
                    width: halfWidth,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    onColorChanged: (color) {
                      demoColorCubit.changePrimaryColor(color);
                    },
                  ),
                  ColorContainer(
                    title: 'Primary Variant',
                    orderNumber: 2,
                    width: halfWidth,
                    backgroundColor:
                        Theme.of(context).colorScheme.primaryVariant,
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    onColorChanged: (color) {
                      context
                          .read<ColorSchemeCubit>()
                          .changePrimaryVariantColor(color);
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  ColorContainer(
                    title: 'Secondary',
                    orderNumber: 3,
                    width: halfWidth,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    textColor: Theme.of(context).colorScheme.onSecondary,
                    onColorChanged: (color) {
                      context
                          .read<ColorSchemeCubit>()
                          .changeSecondaryColor(color);
                    },
                  ),
                  ColorContainer(
                    title: 'Secondary Variant',
                    orderNumber: 4,
                    width: halfWidth,
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryVariant,
                    textColor: Theme.of(context).colorScheme.onSecondary,
                    onColorChanged: (color) {
                      context
                          .read<ColorSchemeCubit>()
                          .changeSecondaryVariantColor(color);
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    ColorContainer(
                      title: 'Background',
                      orderNumber: 5,
                      height: 75,
                      width: thirdWidth,
                      backgroundColor: Theme.of(context).colorScheme.background,
                      textColor: Theme.of(context).colorScheme.onBackground,
                      onColorChanged: (color) {
                        context
                            .read<ColorSchemeCubit>()
                            .changeBackgroundColor(color);
                      },
                    ),
                    ColorContainer(
                      title: 'Surface',
                      orderNumber: 6,
                      height: 75,
                      width: thirdWidth,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      textColor: Theme.of(context).colorScheme.onSurface,
                      onColorChanged: (color) {
                        context
                            .read<ColorSchemeCubit>()
                            .changeSurfaceColor(color);
                      },
                    ),
                    ColorContainer(
                      title: 'Error',
                      orderNumber: 7,
                      height: 75,
                      width: thirdWidth,
                      backgroundColor: Theme.of(context).colorScheme.error,
                      textColor: Theme.of(context).colorScheme.onError,
                      onColorChanged: (color) {
                        demoColorCubit.changeErrorColor(color);
                      },
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  ColorContainer(
                    title: 'OnPrimary',
                    orderNumber: 3,
                    height: 75,
                    width: halfWidth,
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    textColor: Theme.of(context).colorScheme.onSecondary,
                    onColorChanged: (color) {
                      context
                          .read<ColorSchemeCubit>()
                          .changeOnPrimaryColor(color);
                    },
                  ),
                  ColorContainer(
                    title: 'OnSecondary',
                    orderNumber: 4,
                    height: 75,
                    width: halfWidth,
                    backgroundColor: Theme.of(context).colorScheme.onSecondary,
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    onColorChanged: (color) {
                      context
                          .read<ColorSchemeCubit>()
                          .changeOnSecondaryColor(color);
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  ColorContainer(
                    title: 'OnBackground',
                    orderNumber: 5,
                    height: 75,
                    width: thirdWidth,
                    backgroundColor: Theme.of(context).colorScheme.onBackground,
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    onColorChanged: (color) {
                      context
                          .read<ColorSchemeCubit>()
                          .changeOnBackgroundColor(color);
                    },
                  ),
                  ColorContainer(
                    title: 'OnSurface',
                    orderNumber: 6,
                    height: 75,
                    width: thirdWidth,
                    backgroundColor: Theme.of(context).colorScheme.onSurface,
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    onColorChanged: (color) {
                      context
                          .read<ColorSchemeCubit>()
                          .changeOnSurfaceColor(color);
                    },
                  ),
                  ColorContainer(
                    title: 'OnError',
                    orderNumber: 7,
                    height: 75,
                    width: thirdWidth,
                    backgroundColor: Theme.of(context).colorScheme.onError,
                    textColor: Theme.of(context).colorScheme.onSecondary,
                    onColorChanged: (color) {
                      demoColorCubit.changeOnErrorColor(color);
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
