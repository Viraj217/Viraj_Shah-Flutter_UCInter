import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth, User;
import 'package:flutter/material.dart';
import 'package:spiderman/pages/home_page.dart';
import 'package:spiderman/pages/login_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("[AuthPage] Building with StreamBuilder UI...");
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          print("[AuthPage StreamBuilder] ConnectionState: ${snapshot.connectionState}, HasData: ${snapshot.hasData}, HasError: ${snapshot.hasError}, ErrorMsg: ${snapshot.error}");

          if (snapshot.hasError) {
            print("[AuthPage StreamBuilder] Error state triggered.");
            return Center(child: Text('Error: ${snapshot.error}. Check console!'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            print("[AuthPage StreamBuilder] State: Waiting for connection...");
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasData) {
            print("[AuthPage StreamBuilder] State: User IS logged in (UID: ${snapshot.data?.uid}). Showing HomePage placeholder.");
            return const HomePage();
          } else {
            print("[AuthPage StreamBuilder] State: User is NOT logged in. Showing ACTUAL LoginPage.");
            return LoginPage();
          }
        },
      ),
    );
  }
}

