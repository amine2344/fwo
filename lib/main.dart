import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'src/core/app.dart';
import 'src/core/config/setting.dart';

void main()  {
  // Global error handler for uncaught Dart errors
  runZonedGuarded(
    () async {
      // Set this to true to make zone errors fatal, useful for debugging
      BindingBase.debugZoneErrorsAreFatal = true;
      // Ensure Flutter bindings are initialized before using any Flutter APIs
      WidgetsFlutterBinding.ensureInitialized();
      // Initialize settings or any other async operations before starting the app
      await initSettings();
      // Global error handler for Flutter framework errors
      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.dumpErrorToConsole(details);
        // add your own custom error handling logic here if needed
      };
      runApp(const MyApp());
    },
    (error, stackTrace) {
      // Print error and stack trace for debugging
      debugPrint('Uncaught error: $error');
      debugPrint('Stack trace: $stackTrace');
      // add your own custom error handling logic here if needed
    },
  );
}
