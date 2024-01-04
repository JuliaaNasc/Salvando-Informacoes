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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: SizedBox()),
            const Text(
              'PREENCHA O CAMPO ABAIXO: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 221, 201, 201),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(),
              ),
            ),
            const Text(
              'PREENCHA O CAMPO ABAIXO: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 221, 201, 201),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                setState(() {
                  texto = '( ESCREVA AQUI A SUA MENSAGEM )';
                });
              },
              child: const Text(
                ' HELLO WORLD . . .',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              texto,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: SizedBox()),
            Image.asset('assets/wave/wave_red.png'),
          ],
        ),
      ),
    );
  }
}
