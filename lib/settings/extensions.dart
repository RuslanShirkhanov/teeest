import 'package:flutter/material.dart';

import 'package:teeest/settings/settings.dart';

extension BrightnessToggledX on Brightness {
  Brightness get toggled => switch (this) {
        Brightness.dark => Brightness.light,
        Brightness.light => Brightness.dark,
      };
}

extension SettingsCubitToggleX on SettingsCubit {
  void toggleBrightness() => brightness = brightness.toggled;
}
