import 'package:clone_books/pages/enter_page.dart';
import 'package:flutter/material.dart';

class TutorialPage6 extends StatefulWidget {
  const TutorialPage6({Key? key}) : super(key: key);

  @override
  State<TutorialPage6> createState() => _TutorialPage6State();
}

class _TutorialPage6State extends State<TutorialPage6> {
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
                    child: Image.asset('assets/images/tutorial_06.png'),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Pense nisso...',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    '"Viver sem ler é perigoso, te obriga a acreditar no que dizem."',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Mafalda',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const EnterPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Fechar',
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
