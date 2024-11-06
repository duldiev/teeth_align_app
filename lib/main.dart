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

// TASKS
// Note: design in figma
// + Profiles: Doctor, Mentor, Client.
//              contains chat token to connect.
// + List of doctor, mentor, client.
//    admin -> assign mentor to doctor. Drag and Drop.
//             moderate patients added by doctors. (not a priority)
//    doctor -> my mentors and patients.
//    mentor -> my doctors.
// + Finish timer.
// + Create a channel logic. Chats to listed people.
// !!!7. Replace calendar by Konaev.
// + Report. Taking pictures of right and left chicks, middle teeth.
// + Report. Preview screen. List of cases.
// + Aligner settings in Account.
//       Inputs:
//          total aligners sets (int),
//          current aligner number (int),
//          days of where,
//          next change date.
// + Client home screen: current aligner, next aligner (date), timer. (Profile api)
// + Connect chat client to user token.
// + List screen for patient, mentor and doctor list.

// 1. Firebase messaging. (postponed)
// 2. +Leaderboard and Rating.
// + Rate doctor by Mentor in Profile screen.
// 4. Link text in post to use links in text.
// + Remove social sign-ins.
// 6. Indicator for post create case request.
// 7. Example images for 3 image case.
// 8. Finish register doctor by adding new fields which ?
// + Replace calendar by Konaev.
// 10. Patient/Doctor selector icon should be replaced.
// 11. Put real data on Doctor, Patient and Mentor profile screens.
// + Obsecure password input.
// 13. Edit personal data screen.
// 14. Fix chat button.
// + Show more button -> list of items screen.

// + Корректировать работу чата
// + Добавить ссылку на конференсию в созданий поста
// + Ментор, докторлар рольдерде настройки элайнера шыгып тур
// + Ментор рольде докторлар шыкпай тур(бэктыда карайм)
// + Иконка салып кою в приложение

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
