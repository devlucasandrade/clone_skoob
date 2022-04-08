import 'package:clone_books/pages/login_page.dart';
import 'package:clone_books/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                builder: (_) => LoginPage(),
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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sua estante virtual!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                'Leia muito mais, organizando suas leituras',
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                'Acesso rápido e gratuito.',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              const Text(
                'Dados de Acesso',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
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
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Confirme seu Email",
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
              const SizedBox(height: 15),
              TextFormField(
                obscureText: _showPassword == false ? true : false,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  labelText: "Confirme sua Senha",
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
              const CustomButton(
                label: 'Salvar',
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
