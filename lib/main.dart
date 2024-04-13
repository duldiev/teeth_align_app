import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:teeth_align_app/src/core/constants/api_keys.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/utils/bloc_observer.dart';
import 'package:teeth_align_app/src/presentation/base/app.dart';
import 'package:camera/camera.dart';
import 'package:teeth_align_app/src/presentation/base/globals.dart';

// TASKS
// Note: design in figma
// + Profiles: Doctor, Mentor, Client.
//              contains chat token to connect.
// + List of doctor, mentor, client.
//    admin -> assign mentor to doctor. Drag and Drop.
//             moderate patients added by doctors. (not a priority)
//    doctor -> my mentors and patients.
//    mentor -> my doctors.
// 3. Creating a patient by doctor. After creating, doctor create case.
//    Case: picture (multiple, separated inputs) and comment.
// + Finish timer.
// + Create a channel logic. Chats to listed people.
// !!!7. Replace calendar by Konaev.
// + Report. Taking pictures of right and left chicks, middle teeth.
// + Report. Preview screen. List of cases.
// 9. Aligner settings in Account.
//       Inputs:
//          total aligners sets (int),
//          current aligner number (int),
//          days of where,
//          next change date.
// + Client home screen: current aligner, next aligner (date), timer. (Profile api)
// + Connect chat client to user token.

final client = StreamChatClient(
  APIKeys.streamChatTest,
  logLevel: Level.INFO,
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();

  Bloc.observer = GlobalBlocObserver();

  ChuckerFlutter.showOnRelease = false;

  cameras = await availableCameras();

  runApp(const App());
}
