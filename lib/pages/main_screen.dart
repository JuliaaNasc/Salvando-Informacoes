import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String texto = '';
  TextEditingController resultado1 = TextEditingController();
  TextEditingController resultado2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/wave/wave_purple_total.png'),
            Expanded(child: SizedBox()),
            SizedBox(
              height: 150,
              child: Lottie.asset('assets/animations/animation_cat_02.json'),
            ),
            SizedBox(height: 10),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(controller: resultado1),
                ),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(controller: resultado2),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: () {
                setState(
                  () {
                    if (resultado1.text != '' && resultado2.text.isNotEmpty) {
                      texto =
                          'Foi adquirido as informações ${resultado1.text.toUpperCase()} e ${resultado2.text.toUpperCase()}';
                    } else {
                      texto = 'NENHUM TEXTO ENCONTRADO';
                    }
                  },
                );
              },
              child: const Text(
                ' HELLO WORLD . . .',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                  child: Text(
                    texto,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            Image.asset('assets/wave/wave_purple_total.png'),
          ],
        ),
      ),
    );
  }
}
