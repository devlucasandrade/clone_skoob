import 'package:clone_books/pages/tutorial/tutorial_page5.dart';
import 'package:flutter/material.dart';

class TutorialPage4 extends StatefulWidget {
  const TutorialPage4({Key? key}) : super(key: key);

  @override
  State<TutorialPage4> createState() => _TutorialPage4State();
}

class _TutorialPage4State extends State<TutorialPage4> {
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
                    child: Image.asset('assets/images/tutorial_04.png'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Aquele da capa azul...',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Nunca mais esqueça o nome de um livro. Com sua estante virtual no Skoob, você saberá tudo que tem na sua estante real...',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Assim é fácil ver quantos livros você tem, os que já leu, os que deseja ler, os favoritos, os abandonados, etc...',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const TutorialPage5(),
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
