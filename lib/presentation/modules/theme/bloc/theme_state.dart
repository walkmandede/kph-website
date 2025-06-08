part of 'theme_cubit.dart';

@immutable
class ThemeState {
  final ThemeMode themeMode;

  const ThemeState({required this.themeMode});

  factory ThemeState.init() {
    return ThemeState(
      themeMode: ThemeMode.dark,
    );
  }
}
