import 'package:flutter/material.dart';

import 'package:teeest/theme/palette.dart';

extension PaletteX on Palette {
  static final dark = Palette(
    background: const Color(0xff232323),
    surface: const Color(0xff2D2D2D),
    surfaceDisabled: const Color(0xff323232),
    foreground: const Color(0xffFFFFFF).withOpacity(0.8),
    foregroundDisabled: const Color(0xffFFFFFF).withOpacity(0.5),
    primary: const Color(0xff1A397C),
    accent: const Color(0xff0074DF),
    success: const Color(0xff718E1E),
    failure: const Color(0xff8F2D2D),
  );

  static const light = Palette(
    background: Color(0xffFFFFFF),
    foreground: Color(0xff232323),
    primary: Colors.orange,
    accent: Colors.yellow,
  );
}

extension BuildContextThemeX on BuildContext {
  TextTheme? get textTheme => Theme.of(this).textTheme;
  Palette? get palette => Theme.of(this).extension<Palette>();
}

extension BrightnessX on Brightness {
  ThemeMode get asThemeMode => switch (this) {
        Brightness.dark => ThemeMode.dark,
        Brightness.light => ThemeMode.light,
      };
}
