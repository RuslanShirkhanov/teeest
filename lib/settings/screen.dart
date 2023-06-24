import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:teeest/theme/theme.dart';

import 'package:teeest/settings/settings.dart';
import 'package:teeest/settings/extensions.dart';

@immutable
final class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        backgroundColor: context.palette?.background,
        floatingActionButton: FloatingActionButton(
          onPressed: context.read<SettingsCubit>().toggleBrightness,
          backgroundColor: context.palette?.background,
          foregroundColor: context.palette?.foreground,
          child: Text(
            'Toggle',
            textAlign: TextAlign.center,
            style: context.textTheme?.bodyMedium?.copyWith(
              color: context.palette?.foreground?.withOpacity(0.8),
            ),
          ),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(gradient: context.palette?.gradient),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Hello',
                  textAlign: TextAlign.center,
                  style: context.textTheme?.headlineLarge,
                ),
                Text(
                  'World',
                  textAlign: TextAlign.center,
                  style: context.textTheme?.bodyLarge,
                )
              ],
            ),
          ),
        ),
      );
}
