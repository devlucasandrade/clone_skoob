import 'package:flutter/material.dart';

class BuildPage extends StatefulWidget {
  final Color color;
  final String urlImage;
  final String title;
  final String subtitle;
  final Color titlecolor;
  final String title2;
  final String subtitle2;
  final Color? titlecolor2;

  const BuildPage({
    Key? key,
    required this.color,
    required this.urlImage,
    required this.title,
    required this.subtitle,
    required this.titlecolor,
    this.title2 = "",
    this.subtitle2 = "",
    this.titlecolor2,
  }) : super(key: key);

  @override
  State<BuildPage> createState() => _BuildPageState();
}

class _BuildPageState extends State<BuildPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
      color: widget.color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.urlImage,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
          const SizedBox(height: 60),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: widget.titlecolor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    widget.subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  widget.title2,
                  style: TextStyle(
                    color: widget.titlecolor2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    widget.subtitle2,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
