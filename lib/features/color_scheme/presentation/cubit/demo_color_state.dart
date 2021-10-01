part of 'demo_color_cubit.dart';

class DemoColorState extends Equatable {
  const DemoColorState({
    this.colorScheme,
    this.schemeVariant = ColorSchemeVariant.defaultScheme,
  });

  const DemoColorState.defaultScheme() : this();

  const DemoColorState.light()
      : this(
          colorScheme: const ColorScheme.light(),
          schemeVariant: ColorSchemeVariant.light,
        );

  const DemoColorState.dark()
      : this(
          colorScheme: const ColorScheme.dark(),
          schemeVariant: ColorSchemeVariant.dark,
        );

  const DemoColorState.highContrastLight()
      : this(
          colorScheme: const ColorScheme.highContrastLight(),
          schemeVariant: ColorSchemeVariant.highContrastLight,
        );

  const DemoColorState.highContrastDark()
      : this(
          colorScheme: const ColorScheme.highContrastDark(),
          schemeVariant: ColorSchemeVariant.highContrastDark,
        );

  DemoColorState copyWith({
    ColorScheme? colorScheme,
    ColorSchemeVariant? schemeVariant,
  }) {
    return DemoColorState(
      colorScheme: colorScheme ?? this.colorScheme,
      schemeVariant: schemeVariant ?? this.schemeVariant,
    );
  }

  final ColorScheme? colorScheme;
  final ColorSchemeVariant schemeVariant;

  @override
  List<Object?> get props => [colorScheme];
}

enum ColorSchemeVariant {
  defaultScheme,
  light,
  dark,
  highContrastLight,
  highContrastDark,
  custom,
}
