import 'package:flutter/material.dart';
import 'package:spiderman/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  print("[MAIN] App starting...");
  WidgetsFlutterBinding.ensureInitialized();
  print("[MAIN] WidgetsFlutterBinding initialized.");
  try {
    print("[MAIN] Initializing Firebase...");
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print("[MAIN] Firebase initialized successfully.");
  } catch (e) {
    print("[MAIN] Firebase initialization FAILED: $e");
  }
  print("[MAIN] Running app...");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("[MyApp] Building MaterialApp with AuthPage...");
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}

