import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage('media/logo.png'),
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        )
      ),
    );
  }
}