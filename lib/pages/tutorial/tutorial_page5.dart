import 'package:clone_books/pages/tutorial/tutorial_page6.dart';
import 'package:flutter/material.dart';

class TutorialPage5 extends StatefulWidget {
  const TutorialPage5({Key? key}) : super(key: key);

  @override
  State<TutorialPage5> createState() => _TutorialPage5State();
}

class _TutorialPage5State extends State<TutorialPage5> {
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
                    child: Image.asset('assets/images/tutorial_05.png'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Como eu faço para ler?',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Não é possível ler por aqui...',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'O que fazemos é permitir que você tenha total controle sobre suas leituras. Não importa se for papel, ebook ou audiobook.',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const TutorialPage6(),
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
