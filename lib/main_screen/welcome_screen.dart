import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Center(child: Expanded(child: SizedBox())),
              ],
            ),
            SizedBox(
              height: 10,
              child: Lottie.asset('assets/animations/Animation - Cat.json'),
            ),
            Image.asset('assets/wave/wave_purple_esquerda.png'),
          ],
        ),
      ),
    );
  }
}
