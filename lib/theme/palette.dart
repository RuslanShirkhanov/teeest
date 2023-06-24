import 'package:flutter/material.dart';

@immutable
final class Palette extends ThemeExtension<Palette> {
  const Palette({
    this.background,
    this.surface,
    this.surfaceDisabled,
    this.foreground,
    this.foregroundDisabled,
    this.primary,
    this.accent,
    this.success,
    this.failure,
  });

  final Color? background;
  final Color? surface;
  final Color? surfaceDisabled;
  final Color? foreground;
  final Color? foregroundDisabled;
  final Color? primary;
  final Color? accent;
  final Color? success;
  final Color? failure;

  LinearGradient? get gradient {
    final (begin, end) = (primary, accent);
    if (begin == null || end == null) {
      return null;
    }
    return LinearGradient(colors: [begin, end]);
  }

  @override
  Palette copyWith({
    final Color? background,
    final Color? surface,
    final Color? surfaceDisabled,
    final Color? foreground,
    final Color? foregroundDisabled,
    final Color? primary,
    final Color? accent,
    final Color? success,
    final Color? failure,
  }) =>
      Palette(
        background: background ?? this.background,
        surface: surface ?? this.surface,
        surfaceDisabled: surfaceDisabled ?? this.surfaceDisabled,
        foreground: foreground ?? this.foreground,
        foregroundDisabled: foregroundDisabled ?? this.foregroundDisabled,
        primary: primary ?? this.primary,
        accent: accent ?? this.accent,
        success: success ?? this.success,
        failure: failure ?? this.failure,
      );

  @override
  Palette lerp(final ThemeExtension<Palette>? other, final double t) {
    if (other is! Palette) {
      return this;
    }
    return Palette(
      background: Color.lerp(background, other.background, t),
      surface: Color.lerp(surface, other.surface, t),
      surfaceDisabled: Color.lerp(surfaceDisabled, other.surfaceDisabled, t),
      foreground: Color.lerp(foreground, other.foreground, t),
      foregroundDisabled:
          Color.lerp(foregroundDisabled, other.foregroundDisabled, t),
      primary: Color.lerp(primary, other.primary, t),
      accent: Color.lerp(accent, other.accent, t),
      success: Color.lerp(success, other.success, t),
      failure: Color.lerp(failure, other.failure, t),
    );
  }
}
