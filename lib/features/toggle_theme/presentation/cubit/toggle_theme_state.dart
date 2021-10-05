part of 'toggle_theme_cubit.dart';

enum ToggleThemeVariant { defaultTheme, custom }

class ToggleThemeState extends Equatable {
  const ToggleThemeState({
    this.toggleableActiveColor,
    this.themeVariant = ToggleThemeVariant.custom,
  });

  ToggleThemeState._({
    this.themeVariant = ToggleThemeVariant.defaultTheme,
  }) : toggleableActiveColor = ThemeData().toggleableActiveColor;

  ToggleThemeState.defaultTheme() : this._();

  final Color? toggleableActiveColor;
  final ToggleThemeVariant themeVariant;

  ToggleThemeState copyWith({
    Color? toggleableActiveColor,
    ToggleThemeVariant? themeVariant,
  }) {
    return ToggleThemeState(
      toggleableActiveColor:
          toggleableActiveColor ?? this.toggleableActiveColor,
      themeVariant: themeVariant ?? this.themeVariant,
    );
  }

  @override
  List<Object?> get props => [toggleableActiveColor, themeVariant];
}
