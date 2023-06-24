import 'package:flutter/material.dart';

@immutable
final class Settings {
  const Settings({
    required this.locale,
    required this.brightness,
  });

  final Locale locale;
  final Brightness brightness;

  Settings copyWith({
    final Locale? locale,
    final Brightness? brightness,
  }) =>
      Settings(
        locale: locale ?? this.locale,
        brightness: brightness ?? this.brightness,
      );
}
