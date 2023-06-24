import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:teeest/app.dart';

void main(final void _) => runZonedGuarded(_body, _onError);

Future<void> _body() async {
  WidgetsFlutterBinding.ensureInitialized();

  timeDilation = 2.5;

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  await ScreenUtil.ensureScreenSize();

  return runApp(const App());
}

void _onError(Object error, StackTrace stackTrace) =>
    log('error', error: error, stackTrace: stackTrace);
