import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:teeth_align_app/src/core/constants/api_keys.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/utils/bloc_observer.dart';
import 'package:teeth_align_app/src/core/utils/custom_http_overrides.dart';
import 'package:teeth_align_app/src/presentation/base/app.dart';
import 'package:camera/camera.dart';
import 'package:teeth_align_app/src/presentation/base/globals.dart';

final client = StreamChatClient(
  APIKeys.streamChatTest,
  logLevel: Level.INFO,
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();

  Bloc.observer = GlobalBlocObserver();

  try {
    cameras = await availableCameras();
  } catch (_) {}

  // await getIt<SharedPreferences>().clear();

  runApp(const App());
}
