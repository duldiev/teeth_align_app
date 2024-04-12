import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:teeth_align_app/src/core/constants/api_keys.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/utils/bloc_observer.dart';
import 'package:teeth_align_app/src/presentation/base/app.dart';

// TASKS
// Note: design in figma
// !!!1. Profiles: Doctor, Mentor, Client.
//              contains chat token to connect.
// 2. List of doctor, mentor, client.
//    admin -> assign mentor to doctor. Drag and Drop.
//             moderate patients added by doctors. (not a priority)
//    doctor -> my mentors and patients.
//    mentor -> my doctors.
// 3. Creating a patient by doctor. After creating, doctor create case.
//    Case: picture (multiple, separated inputs) and comment.
// 4. Finish timer.
// 6. Create a channel logic. Chats to listed people.
// !!!7. Replace calendar by Konaev.
// !!!5. Report. Taking pictures of right and left chicks, middle teeth.
// 8. Report. Preview screen. List of cases.
// 9. Aligner settings in Account.
//       Inputs:
//          total aligners sets (int),
//          current aligner number (int),
//          days of where,
//          next change date.
// 10. Client home screen: current aligner, next aligner (date), timer. (Profile api)
// !!! 11. Connect chat client to user token.

final client = StreamChatClient(
  APIKeys.streamChatTest,
  logLevel: Level.INFO,
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();

  Bloc.observer = GlobalBlocObserver();

  ChuckerFlutter.showOnRelease = true;

  await client.connectUser(
    User(id: 'test-user-t-flutter'),
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoidGVzdC11c2VyLXQtZmx1dHRlciJ9.yZIsmPOK4GZaXJ95Chxm-qR_dsElBic0xwHnvbisDWo',
  );

  runApp(const App());
}
