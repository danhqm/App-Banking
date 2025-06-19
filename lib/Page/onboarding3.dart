import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Image.asset(
                'media/onboarding3.png',
                width: 335,
                height: 298.53,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 115),
              width: 312,
              height: 78,
              child: const Text(
                'Paying for Everything is Easy and Convenient',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 270,
              height: 48,
              child: const Text(
                'Built-in Fingerprint, face recognition and more, keeping you completely safe',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF7E848D),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 52),
              width: 335,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  // Action goes here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0066FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
