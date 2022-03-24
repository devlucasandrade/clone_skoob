import 'package:clone_books/pages/tutorial/tutorial_page3.dart';
import 'package:flutter/material.dart';

class TutorialPage2 extends StatefulWidget {
  const TutorialPage2({Key? key}) : super(key: key);

  @override
  State<TutorialPage2> createState() => _TutorialPage2State();
}

class _TutorialPage2State extends State<TutorialPage2> {
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
                    width: MediaQuery.of(context).size.width * 0.9,
                    // height: MediaQuery.of(context).size.height,
                    child: Image.asset('assets/images/tutorial_02.png'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Mais livros lidos',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Diversas funcionalidades que deixarão você motivado a concluir mais livros.',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Calculadora de ritmo de leitura, Metas, Desafios, Paginômetro, Ranking literário... e muitas outras!',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const TutorialPage3(),
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
