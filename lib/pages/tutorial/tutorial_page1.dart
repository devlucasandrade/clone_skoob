import 'package:clone_books/pages/tutorial/tutorial_page2.dart';
import 'package:flutter/material.dart';

class TutorialPage1 extends StatefulWidget {
  const TutorialPage1({Key? key}) : super(key: key);

  @override
  State<TutorialPage1> createState() => _TutorialPage1State();
}

class _TutorialPage1State extends State<TutorialPage1> {
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
                    width: MediaQuery.of(context).size.width * 0.8,
                    // height: MediaQuery.of(context).size.height,
                    child: Image.asset('assets/images/tutorial_01.png'),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Seu assistente de leitura',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Um aplicativo gratuito para você organizar suas leituras e ler cada vez mais.',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const TutorialPage2(),
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
