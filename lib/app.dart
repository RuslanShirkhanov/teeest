import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:teeest/theme/theme.dart';
import 'package:teeest/settings/settings.dart';

@immutable
final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) => BlocProvider<SettingsCubit>(
        create: (final context) => SettingsCubit(SettingsX.system),
        child: const AppView(),
      );
}

@immutable
final class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(final BuildContext context) =>
      BlocBuilder<SettingsCubit, Settings>(
        builder: (final context, final settings) => ScreenUtilInit(
          designSize: designSize,
          builder: (final context, final child) => MaterialApp(
            theme: light,
            darkTheme: dark,
            themeMode: settings.brightness.asThemeMode,
            home: child,
          ),
          child: const SettingsScreen(),
        ),
      );
}

const designSize = Size(375, 812);

extension SettingsX on Settings {
  static const _default =
      Settings(locale: Locale('ru'), brightness: Brightness.dark);

  static Settings get system {
    final platformDispatcher = PlatformDispatcher.instance;
    return _default.copyWith(
      locale: platformDispatcher.locale,
      brightness: platformDispatcher.platformBrightness,
    );
  }
}
