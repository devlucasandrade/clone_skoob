import 'package:clone_books/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import '../components/login/custom_login_btn.dart';
import '../widgets/widgets.dart';
import 'pages.dart';

class LoginPage extends StatelessWidget {
  LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const EnterPage(),
              ),
            );
          },
          icon: const Icon(Icons.close),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.8,
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Image.network(
                  'https://static-sp.skoob.com.br/img/v2/logo-footer.png',
                  scale: 1.1,
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  onChanged: _controller.setLogin,
                  label: 'Email',
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  onChanged: _controller.setPass,
                  label: 'Senha',
                  obscuredText: true,
                ),
                const SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ForgotPassPage(),
                      ),
                    );
                  },
                  child: const Text('Esqueci minha senha'),
                ),
                const SizedBox(height: 20),
                CustomLoginButtonComponent(
                  label: 'ENTRAR',
                  loginController: _controller,
                ),
                const SizedBox(height: 10),
                const Text('ou', style: TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                const CustomButton(
                  label: 'Entrar com o Facebook',
                  color: Color(0xFF3b5998),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Não tem cadastro?',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const RegisterPage(),
                            ),
                          );
                        },
                        child: const Text('Cadastre-se'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
