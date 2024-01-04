import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<WelcomeScreen> {
  String texto = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  texto = '( ESCREVA AQUI A SUA MENSAGEM )';
                });
              },
              child: const Text(
                ' HELLO WORLD . . .',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 10),
            Text(
              texto,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
