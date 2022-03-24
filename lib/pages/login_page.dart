import 'package:clone_books/pages/enter_page.dart';
import 'package:clone_books/pages/forgotpass_page.dart';
import 'package:clone_books/pages/signup_page.dart';
import 'package:clone_books/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = false;
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
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    labelStyle: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: _showPassword == false ? true : false,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    labelText: "Senha",
                    contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    labelStyle: const TextStyle(fontSize: 18),
                    suffixIcon: GestureDetector(
                      child: Icon(_showPassword == false
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ForgotPassPage(),
                      ),
                    );
                  },
                  child: const Text('Esqueci minha senha'),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 30),
                const CustomButton(
                  label: 'ENTRAR',
                  color: Colors.blue,
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
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const RegisterPage(),
                            ),
                          );
                        },
                        child: const Text('Cadastre-se'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                          side: const BorderSide(color: Colors.blue),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
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
