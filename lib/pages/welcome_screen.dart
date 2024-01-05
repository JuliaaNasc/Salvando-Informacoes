import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:salvando_informacoes/pages/main_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 10),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (c) {
              return MainScreen();
            },
          ),
        );
      },
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/wave/wave_purple_total.png'),
              Expanded(child: SizedBox()),
              SizedBox(
                height: 270,
                child: Lottie.asset('assets/animations/animation_cat.json'),
              ),
              SizedBox(
                height: 100,
                child: Lottie.asset('assets/animations/animation_loading.json'),
              ),
              Expanded(child: SizedBox()),
              Image.asset('assets/wave/wave_purple_total.png'),
            ],
          ),
        ),
      ),
    );
  }
}
