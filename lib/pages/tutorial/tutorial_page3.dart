import 'package:clone_books/pages/tutorial/tutorial_page4.dart';
import 'package:flutter/material.dart';

class TutorialPage3 extends StatefulWidget {
  const TutorialPage3({Key? key}) : super(key: key);

  @override
  State<TutorialPage3> createState() => _TutorialPage3State();
}

class _TutorialPage3State extends State<TutorialPage3> {
  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    // height: MediaQuery.of(context).size.height,
                    child: Image.asset('assets/images/tutorial_03.png'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Rede social para leitores',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Já somos mais de 8 milhões de leitores, compartilhando opiniões, resenhas, avaliações, notas de leitura, etc...',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'O melhor lugar para fazer novos amigos e conhecer novos livros.',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const TutorialPage4(),
                          ),
                        );
                      },
                      child: const Text(
                        'Próximo',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.blue,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * 0.6, 0),
                        side: const BorderSide(color: Colors.blue),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
