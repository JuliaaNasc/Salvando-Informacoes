import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:salvando_informacoes/pages/main_screen.dart';
import 'package:salvando_informacoes/pages/page_new.dart';

class PageNewTwo extends StatefulWidget {
  const PageNewTwo({super.key});

  @override
  State<PageNewTwo> createState() => _PageNewTwoState();
}

class _PageNewTwoState extends State<PageNewTwo> {
  List<String> imagens = [
    'assets/imagens/meme_gato_01.gif',
    'assets/imagens/meme_gato_02.gif',
    'assets/imagens/meme_gato_03.gif',
    'assets/imagens/meme_gato_04.gif',
    'assets/imagens/meme_gato_05.gif',
    'assets/imagens/meme_gato_06.gif',
  ];

  int posicao_imagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imagens[posicao_imagem],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 10,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: () {
                if (posicao_imagem == imagens.length - 1) {
                  setState(
                    () {
                      posicao_imagem = 0;
                    },
                  );
                } else {
                  setState(
                    () {
                      posicao_imagem = posicao_imagem + 1;
                    },
                  );
                }
                ;
              },
              child: const Text(
                'Avançar',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 170,
            right: 170,
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (c) {
                      return MainScreen();
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.home,
                size: 50,
                color: Colors.purple,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 10,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: () {
                if (posicao_imagem == 0) {
                  setState(
                    () {
                      posicao_imagem = imagens.length - 1;
                    },
                  );
                } else {
                  setState(
                    () {
                      posicao_imagem = posicao_imagem - 1;
                    },
                  );
                }
                ;
              },
              child: const Text(
                'Voltar',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
