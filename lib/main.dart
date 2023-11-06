import 'package:clean_auth/injection_container.dart' as dependency_injection;
import 'package:clean_auth/src/core/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:universal_platform/universal_platform.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  if (UniversalPlatform.isAndroid || UniversalPlatform.isIOS) {
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }

  await dependency_injection.init();

  runApp(App());
}
