part of 'toggle_theme_cubit.dart';

enum ToggleThemeVariant { defaultTheme, custom }

class ToggleThemeState extends Equatable {
  const ToggleThemeState._({
    this.toggleableActiveColor,
    this.themeVariant = ToggleThemeVariant.custom,
  });

  ToggleThemeState.defaultTheme()
      : this._(
          toggleableActiveColor: ThemeData().toggleableActiveColor,
          themeVariant: ToggleThemeVariant.custom,
        );

  const ToggleThemeState.custom(Color toggleableActiveColor)
      : this._(
          toggleableActiveColor: toggleableActiveColor,
          themeVariant: ToggleThemeVariant.custom,
        );

  final Color? toggleableActiveColor;
  final ToggleThemeVariant themeVariant;

  ToggleThemeState copyWith({
    Color? toggleableActiveColor,
    ToggleThemeVariant? themeVariant,
  }) {
    return ToggleThemeState._(
      toggleableActiveColor:
          toggleableActiveColor ?? this.toggleableActiveColor,
      themeVariant: themeVariant ?? this.themeVariant,
    );
  }

  @override
  List<Object?> get props => [toggleableActiveColor, themeVariant];
}
