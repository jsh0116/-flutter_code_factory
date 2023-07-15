import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold 위젯
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF99231),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/img/logo.png',
                  width: 200,
                ),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                      Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
