import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/pages.dart';

bool? seenOnboard;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences pref = await SharedPreferences.getInstance();
  seenOnboard = pref.getBool('seenOnboard') ?? false;
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone Skoob',
      home: seenOnboard == true ? const EnterPage() : const OnBoardingPage(),
      initialRoute: '/enter',
      routes: {
        '/login': (context) => LoginPage(),
        '/enter': (context) => EnterPage(),
        '/content': (context) => ContentPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
