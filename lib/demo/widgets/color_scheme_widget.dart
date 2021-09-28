import 'package:flutter/material.dart';
import 'package:flutter_app_theme/core/core.dart';
import 'package:flutter_app_theme/demo/demo.dart';

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
              ),
              _ColorContainer(
                title: 'Primary Variant',
                orderNumber: 2,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.primaryVariant,
                textColor: Theme.of(context).colorScheme.onPrimary,
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
              ),
              _ColorContainer(
                title: 'Secondary Variant',
                orderNumber: 4,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.secondaryVariant,
                textColor: Theme.of(context).colorScheme.onSecondary,
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
                ),
                _ColorContainer(
                  title: 'Surface',
                  orderNumber: 6,
                  height: 80,
                  width: thirdWidth,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  textColor: Theme.of(context).colorScheme.onSurface,
                ),
                _ColorContainer(
                  title: 'Error',
                  orderNumber: 7,
                  height: 80,
                  width: thirdWidth,
                  backgroundColor: Theme.of(context).colorScheme.error,
                  textColor: Theme.of(context).colorScheme.onError,
                ),
              ],
            ),
          ),
          Row(
            children: [
              _ColorContainer(
                title: 'onPrimary',
                orderNumber: 3,
                height: 80,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                textColor: Theme.of(context).colorScheme.onSecondary,
              ),
              _ColorContainer(
                title: 'OnSecondary',
                orderNumber: 4,
                height: 80,
                width: halfWidth,
                backgroundColor: Theme.of(context).colorScheme.onSecondary,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
            ],
          ),
          Row(
            children: [
              _ColorContainer(
                title: 'on Background',
                orderNumber: 5,
                height: 80,
                width: thirdWidth,
                backgroundColor: Theme.of(context).colorScheme.onBackground,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
              _ColorContainer(
                title: 'on Surface',
                orderNumber: 6,
                height: 80,
                width: thirdWidth,
                backgroundColor: Theme.of(context).colorScheme.onSurface,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
              _ColorContainer(
                title: 'on Error',
                orderNumber: 7,
                height: 80,
                width: thirdWidth,
                backgroundColor: Theme.of(context).colorScheme.onError,
                textColor: Theme.of(context).colorScheme.onSecondary,
              ),
            ],
          ),
        ],
      );
    });
  }
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.title,
    required this.width,
    required this.orderNumber,
    this.height = 110,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  final double width;
  final double height;
  final String title;
  final int orderNumber;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.2, color: Colors.grey.shade500),
        color: backgroundColor,
      ),
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                title,
                style: TextStyle(
                  color: textColor,
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
                    backgroundColor: textColor,
                    radius: 12,
                    child: Text(
                      orderNumber.toString(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      backgroundColor.toHexString(),
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
