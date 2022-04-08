import 'package:clone_books/controllers/login_controller.dart';
import 'package:clone_books/main.dart';
import 'package:flutter/material.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  final String label;

  const CustomLoginButtonComponent({
    Key? key,
    required this.loginController,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        padding: const EdgeInsets.all(14),
        minimumSize: Size(MediaQuery.of(context).size.width, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        loginController.auth().then((result) {
          if (result) {
            Navigator.of(context).pushReplacementNamed('/content');
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.red,
                content: Text('Falha ao realizar o login'),
                duration: Duration(seconds: 5),
              ),
            );
          }
        });
      },
      child: Text(
        label,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
