part of 'theme_cubit.dart';

@immutable
abstract class ThemeState extends Equatable {
  final ThemeMode themeMode;
  const ThemeState({required this.themeMode});

  @override
  List<Object> get props => [themeMode];
}

@immutable
class ThemeInitial extends ThemeState {
  const ThemeInitial() : super(themeMode: ThemeMode.system);
}

@immutable
class ThemeLightMode extends ThemeState {
  const ThemeLightMode() : super(themeMode: ThemeMode.light);
}

@immutable
class ThemeDarkMode extends ThemeState {
  const ThemeDarkMode() : super(themeMode: ThemeMode.dark);
}

@immutable
class ThemeSystemMode extends ThemeState {
  const ThemeSystemMode() : super(themeMode: ThemeMode.system);
}
