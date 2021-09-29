import 'package:flutter/material.dart';
import 'package:flutter_app_theme/core/core.dart';
import 'package:flutter_app_theme/demo/demo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorSchemeWidget extends StatelessWidget {
  const ColorSchemeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final halfWidth = constraints.maxWidth / 2;
      final thirdWidth = constraints.maxWidth / 3;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(label: 'Color Scheme'),
          Row(
            children: [
              _ColorContainer(
                title: 'Primary',
                orderNumber: 1,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.primary,
                textColor: Theme.of(context).colorScheme.onPrimary,
                onColorChanged: (color) {
                  context.read<DemoColorCubit>().changePrimaryColor(color);
                },
              ),
              _ColorContainer(
                title: 'Primary Variant',
                orderNumber: 2,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.primaryVariant,
                textColor: Theme.of(context).colorScheme.onPrimary,
                onColorChanged: (color) {
                  context
                      .read<DemoColorCubit>()
                      .changePrimaryVariantColor(color);
                },
              ),
            ],
          ),
          Row(
            children: [
              _ColorContainer(
                title: 'Secondary',
                orderNumber: 3,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.secondary,
                textColor: Theme.of(context).colorScheme.onSecondary,
                onColorChanged: (color) {
                  context.read<DemoColorCubit>().changeSecondaryColor(color);
                },
              ),
              _ColorContainer(
                title: 'Secondary Variant',
                orderNumber: 4,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.secondaryVariant,
                textColor: Theme.of(context).colorScheme.onSecondary,
                onColorChanged: (color) {
                  context
                      .read<DemoColorCubit>()
                      .changeSecondaryVariantColor(color);
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                _ColorContainer(
                  title: 'Background',
                  orderNumber: 5,
                  height: 80,
                  width: thirdWidth,
                  backgroundColor: Theme.of(context).colorScheme.background,
                  textColor: Theme.of(context).colorScheme.onBackground,
                  onColorChanged: (color) {
                    context.read<DemoColorCubit>().changeBackgroundColor(color);
                  },
                ),
                _ColorContainer(
                  title: 'Surface',
                  orderNumber: 6,
                  height: 80,
                  width: thirdWidth,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  textColor: Theme.of(context).colorScheme.onSurface,
                  onColorChanged: (color) {
                    context.read<DemoColorCubit>().changeSurfaceColor(color);
                  },
                ),
                _ColorContainer(
                  title: 'Error',
                  orderNumber: 7,
                  height: 80,
                  width: thirdWidth,
                  backgroundColor: Theme.of(context).colorScheme.error,
                  textColor: Theme.of(context).colorScheme.onError,
                  onColorChanged: (color) {
                    context.read<DemoColorCubit>().changeErrorColor(color);
                  },
                ),
              ],
            ),
          ),
          Row(
            children: [
              _ColorContainer(
                title: 'OnPrimary',
                orderNumber: 3,
                height: 80,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                textColor: Theme.of(context).colorScheme.onSecondary,
                onColorChanged: (color) {
                  context.read<DemoColorCubit>().changeOnPrimaryColor(color);
                },
              ),
              _ColorContainer(
                title: 'OnSecondary',
                orderNumber: 4,
                height: 80,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.onSecondary,
                textColor: Theme.of(context).colorScheme.onPrimary,
                onColorChanged: (color) {
                  context.read<DemoColorCubit>().changeOnSecondaryColor(color);
                },
              ),
            ],
          ),
          Row(
            children: [
              _ColorContainer(
                title: 'OnBackground',
                orderNumber: 5,
                height: 80,
                width: thirdWidth,
                backgroundColor: Theme.of(context).colorScheme.onBackground,
                textColor: Theme.of(context).colorScheme.onPrimary,
                onColorChanged: (color) {
                  context.read<DemoColorCubit>().changeOnBackgroundColor(color);
                },
              ),
              _ColorContainer(
                title: 'OnSurface',
                orderNumber: 6,
                height: 80,
                width: thirdWidth,
                backgroundColor: Theme.of(context).colorScheme.onSurface,
                textColor: Theme.of(context).colorScheme.onPrimary,
                onColorChanged: (color) {
                  context.read<DemoColorCubit>().changeOnSurfaceColor(color);
                },
              ),
              _ColorContainer(
                title: 'OnError',
                orderNumber: 7,
                height: 80,
                width: thirdWidth,
                backgroundColor: Theme.of(context).colorScheme.onError,
                textColor: Theme.of(context).colorScheme.onSecondary,
                onColorChanged: (color) {
                  context.read<DemoColorCubit>().changeOnErrorColor(color);
                },
              ),
            ],
          ),
        ],
      );
    });
  }
}

class _ColorContainer extends StatefulWidget {
  const _ColorContainer({
    Key? key,
    required this.title,
    required this.width,
    required this.orderNumber,
    this.height = 110,
    required this.backgroundColor,
    required this.textColor,
    required this.onColorChanged,
  }) : super(key: key);

  final double width;
  final double height;
  final String title;
  final int orderNumber;
  final Color backgroundColor;
  final Color textColor;
  final ValueChanged<Color> onColorChanged;

  @override
  State<_ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<_ColorContainer> {
  late Color currentColor;

  @override
  Widget build(BuildContext context) {
    currentColor = widget.backgroundColor;
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return LayoutBuilder(
                builder: (context, constraints) => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ColorPicker(
                      pickerColor: currentColor,
                      onColorChanged: (color) {
                        widget.onColorChanged(color);
                      },
                      colorPickerWidth: constraints.maxWidth - 50,
                      pickerAreaHeightPercent: 0.5,
                      enableAlpha: true,
                      displayThumbColor: true,
                      showLabel: true,
                      paletteType: PaletteType.hsv,
                      pickerAreaBorderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(2.0),
                        topRight: Radius.circular(2.0),
                      ),
                    ),
                  ),
                ),
              );
            });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.2, color: Colors.grey.shade500),
          color: widget.backgroundColor,
        ),
        height: widget.height,
        width: widget.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: widget.textColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                  top: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.textColor,
                      radius: 12,
                      child: Text(
                        widget.orderNumber.toString(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        widget.backgroundColor.toHexString(),
                        style: TextStyle(
                          color: widget.textColor,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
