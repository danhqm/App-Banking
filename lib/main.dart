// lib/main.dart
import 'package:app_banking/Page/onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:app_banking/Page/splash.dart';
import 'package:app_banking/Page/onboarding.dart';
import 'package:app_banking/Page/onboarding2.dart';
import 'package:app_banking/Page/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splash(),
    );
  }
}