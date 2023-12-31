import 'package:flutter/material.dart';
import 'package:myapp/auth/login_or_register.dart';
import 'package:myapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myapp/theme/dark_mode.dart';
import 'package:myapp/theme/light_mode.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
