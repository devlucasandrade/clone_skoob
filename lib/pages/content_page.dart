import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.padding,
                  size: 30,
                ),
                Image.asset(
                  'assets/images/skoob-logo-topo.png',
                  scale: 1,
                ),
                Icon(
                  Icons.padding,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
