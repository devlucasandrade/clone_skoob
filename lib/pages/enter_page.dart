import 'package:clone_books/pages/onboarding.dart';
import 'package:clone_books/pages/login_page.dart';
import 'package:flutter/material.dart';

class EnterPage extends StatelessWidget {
  const EnterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.7,
            margin: const EdgeInsets.all(10),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Image.network(
                'https://static-sp.skoob.com.br/img/v2/logo-footer.png',
                scale: 1.1,
              ),
              const SizedBox(height: 10),
              Image.network(
                'https://static-sp.skoob.com.br/img/v2/base/skoob-logo-topo.gif',
                scale: 1,
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  'Entrar',
                  style: TextStyle(fontSize: 18),
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.blue,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.6, 0),
                  side: const BorderSide(color: Colors.blue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.bookmark_outline, color: Colors.blue, size: 45),
                  Icon(Icons.star_outline, color: Colors.blue, size: 45),
                  Icon(Icons.border_color_outlined,
                      color: Colors.blue, size: 45),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Seu assistente literário',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Organize suas leituras e leia mais!',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(
                    radius: 26,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage('assets/images/isaac.jpg'),
                    ),
                  ),
                  CircleAvatar(
                    radius: 26,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage('assets/images/valter.jpg'),
                    ),
                  ),
                  CircleAvatar(
                    radius: 26,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage('assets/images/rafael.jpg'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Sua rede social literária',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Mais de 8 milhões de leitores!',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const OnBoardingPage(),
                    ),
                  );
                },
                child: const Text('Dúvidas? Veja como funciona.'),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
