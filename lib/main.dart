import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:portfolio/app_theme.dart';

import 'router/router.gr.dart';
import 'values/values.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyD6wzI7EsUo2xltdnJGcmw3PuJG8k3Qxkk',
        appId: '1:106590800570:web:1f0c458f07785127435083',
        messagingSenderId: '106590800570',
        projectId: 'sixteenbrains-ee1ed"',
        storageBucket: 'sixteenbrains-ee1ed.appspot.com"',
      ),
    );
  } else {
    Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp.router(
        title: StringConst.APP_NAME,
        theme: AppTheme.lightThemeData,
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
