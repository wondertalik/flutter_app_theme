part of 'color_scheme_cubit.dart';

class ColorSchemeState extends Equatable {
  const ColorSchemeState({
    this.colorScheme,
    this.schemeVariant = ColorSchemeVariant.defaultScheme,
  });

  ColorSchemeState._({
    this.schemeVariant = ColorSchemeVariant.defaultScheme,
  }) : colorScheme = ThemeData().colorScheme;

  ColorSchemeState.defaultScheme() : this._();

  const ColorSchemeState.light()
      : this(
          colorScheme: const ColorScheme.light(),
          schemeVariant: ColorSchemeVariant.light,
        );

  const ColorSchemeState.dark()
      : this(
          colorScheme: const ColorScheme.dark(),
          schemeVariant: ColorSchemeVariant.dark,
        );

  const ColorSchemeState.highContrastLight()
      : this(
          colorScheme: const ColorScheme.highContrastLight(),
          schemeVariant: ColorSchemeVariant.highContrastLight,
        );

  const ColorSchemeState.highContrastDark()
      : this(
          colorScheme: const ColorScheme.highContrastDark(),
          schemeVariant: ColorSchemeVariant.highContrastDark,
        );

  ColorSchemeState copyWith({
    ColorScheme? colorScheme,
    ColorSchemeVariant? schemeVariant,
  }) {
    return ColorSchemeState(
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
