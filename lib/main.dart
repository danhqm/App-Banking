import 'package:app_banking/Page/changepassword.dart';
import 'package:app_banking/Page/sendmoney.dart';
import 'package:flutter/material.dart';
import 'package:app_banking/Page/bottomnav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Password(),
    );
  }
}