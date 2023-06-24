import 'package:flutter/material.dart';

import 'package:teeest/theme/base.dart';
import 'package:teeest/theme/extensions.dart';

ThemeData get dark => base.copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: PaletteX.dark.background,
      textTheme: base.textTheme.apply(
        bodyColor: PaletteX.dark.foreground,
        displayColor: PaletteX.dark.foreground,
      ),
      extensions: <ThemeExtension<dynamic>>{PaletteX.dark},
    );
