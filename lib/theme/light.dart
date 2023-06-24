import 'package:flutter/material.dart';

import 'package:teeest/theme/base.dart';
import 'package:teeest/theme/extensions.dart';

ThemeData get light => base.copyWith(
      brightness: Brightness.light,
      scaffoldBackgroundColor: PaletteX.light.background,
      textTheme: base.textTheme.apply(
        bodyColor: PaletteX.light.foreground,
        displayColor: PaletteX.light.foreground,
      ),
      extensions: <ThemeExtension<dynamic>>{PaletteX.light},
    );
