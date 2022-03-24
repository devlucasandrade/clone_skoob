import 'package:clone_books/pages/enter_page.dart';
import 'package:clone_books/pages/login_page.dart';
import 'package:clone_books/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({Key? key}) : super(key: key);

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
                builder: (_) => const LoginPage(),
              ),
            );
          },
          icon: const Icon(Icons.close),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 0.7,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Informe o email cadastrado e uma senha será enviada para você.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  // labelText: 'Email',
                  hintText: 'Digite o email cadastrado',
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  labelStyle: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 40),
              const CustomButton(
                label: 'Reenviar',
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoginPage(),
                    ),
                  );
                },
                child: const Text('CANCELAR'),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
