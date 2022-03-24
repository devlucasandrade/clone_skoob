import 'package:clone_books/pages/tutorial/tutorial_page1.dart';
import 'package:flutter/material.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.network(
                        'https://static-sp.skoob.com.br/img/v2/logo-footer.png',
                        scale: 2,
                      ),
                      const SizedBox(width: 20),
                      Image.network(
                        'https://static-sp.skoob.com.br/img/v2/base/skoob-logo-topo.gif',
                        scale: 0.7,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Perfeito para...',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'quem sabe que ler é importante e buscava um aplicativo para criar ou melhorar seu hábito de leitura.',
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Não serve para...',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'quem procura um app para ler ebooks, não é possível ler ebook por aqui.',
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const TutorialPage1(),
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
