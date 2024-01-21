import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/app/splash_screen/splash_screen.dart';
import 'package:flutter_application_1/features/user_auth/presentation/pages/home_page.dart';
import 'package:flutter_application_1/features/user_auth/presentation/pages/login_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAZq-IEvhHJyQsKbomQLGGDmTuIfYqStCQ",
            appId: "1:665707960996:web:bdf06d61b9db86ca70e431",
            messagingSenderId: "665707960996",
            projectId: "flutterfirebase-906e0"));
  } else {
    await Firebase.initializeApp();
  }

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      home: SplashScreen(
        child: LoginPage(),
      ),
    );
  }
}
