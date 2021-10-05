import 'package:flutter/material.dart';
import 'package:flutter_app_theme/core/core.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorContainer extends StatefulWidget {
  const ColorContainer({
    Key? key,
    required this.title,
    required this.width,
    required this.orderNumber,
    this.height = 95,
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
  State<ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
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
                        widget.backgroundColor.toHexString().toUpperCase(),
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
