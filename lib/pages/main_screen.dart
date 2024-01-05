import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String texto = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/wave/wave_purple_total.png'),
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
                backgroundColor: MaterialStateProperty.all(Colors.purple),
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
            SizedBox(height: 10),
            Text(
              texto,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: SizedBox()),
            Image.asset('assets/wave/wave_purple_total.png'),
          ],
        ),
      ),
    );
  }
}
