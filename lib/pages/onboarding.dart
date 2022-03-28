import 'package:clone_books/main.dart';
import 'package:clone_books/pages/enter_page.dart';
import 'package:clone_books/widgets/build_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future setSeenonboard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    seenOnboard = await prefs.setBool('seenOnboard', true);
  }

  @override
  void initState() {
    super.initState();
    setSeenonboard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() => isLastPage = index == 6);
        },
        children: [
          BuildPage(
            color: Colors.white,
            urlImage: "assets/images/logo-nome.png",
            title: "PERFEITO PARA...",
            titlecolor: Colors.blue.shade700,
            subtitle:
                "Quem sabe que ler é importante e buscava um aplicativo para criar ou melhorar seu hábito de leitura.",
            title2: "NÃO SERVE PARA...",
            titlecolor2: Colors.red.shade700,
            subtitle2:
                "Quem procura um app para ler ebooks, não é possível ler ebook por aqui.",
          ),
          BuildPage(
            color: Colors.white,
            urlImage: "assets/images/tutorial_01.png",
            title: "SEU ASSITENTE DE LEITURA",
            titlecolor: Colors.blue.shade700,
            subtitle:
                "Um aplicativo gratuito para você organizar suas leituras e ler cada vez mais.",
          ),
          BuildPage(
            color: Colors.white,
            urlImage: "assets/images/tutorial_02.png",
            title: "MAIS LIVROS LIDOS",
            titlecolor: Colors.blue.shade700,
            subtitle:
                "Diversas funcionalidades que deixarão você motivado a concluir mais livros.\n\nCalculadora de ritmo de leitura, Metas, Desafios, Paginômetro, Ranking literário... e muitas outras!",
          ),
          BuildPage(
            color: Colors.white,
            urlImage: "assets/images/tutorial_03.png",
            title: "REDE SOCIAL PARA LEITORES",
            titlecolor: Colors.blue.shade700,
            subtitle:
                "Já somos mais de 8 milhões de leitores, compartilhando opiniões, resenhas, avaliações, notas de leitura, e muito mais.\n\nO melhor lugar para fazer novos amigos e conhecer novos livros.",
          ),
          BuildPage(
            color: Colors.white,
            urlImage: "assets/images/tutorial_04.png",
            title: "AQUELE DA CAPA AZUL...",
            titlecolor: Colors.blue.shade700,
            subtitle:
                "Nunca mais esqueça o nome de um livro. Com sua estante virtual no Skoob, você saberá tudo que tem na sua estante real...\n\nAssim é fácil ver quantos livros você tem, os que já leu, os que deseja ler, os favoritos, os abandonados, etc...",
          ),
          BuildPage(
            color: Colors.white,
            urlImage: "assets/images/tutorial_05.png",
            title: "COMO FAÇO PARA LER?",
            titlecolor: Colors.blue.shade700,
            subtitle:
                "Não é possível ler por aqui...\n\nO que fazemos é permitir que você tenha total controle sobre suas leituras. Não importa se for papel, ebook ou audiobook.",
          ),
          BuildPage(
            color: Colors.white,
            urlImage: "assets/images/tutorial_06.png",
            title: "PENSE NISSO",
            titlecolor: Colors.blue.shade700,
            subtitle:
                '"Viver sem ler é perigoso, te obriga a acreditar no que dizem."\n\nMafalda',
          ),
        ],
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                primary: Colors.white,
                backgroundColor: Colors.blue.shade700,
                minimumSize: const Size.fromHeight(80),
              ),
              child: const Text(
                "VAMOS COMEÇAR?",
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const EnterPage()),
                );
              },
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: const Text(
                      "PULAR",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => controller.jumpToPage(7),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 7,
                      effect: const WormEffect(
                        dotWidth: 10,
                        dotHeight: 10,
                        spacing: 10,
                        activeDotColor: Colors.blue,
                      ),
                      onDotClicked: (index) => controller.animateToPage(
                        index,
                        duration: const Duration(microseconds: 500),
                        curve: Curves.easeIn,
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      "PRÓXIMO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => controller.nextPage(
                      duration: const Duration(microseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
