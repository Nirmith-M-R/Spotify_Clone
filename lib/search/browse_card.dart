import 'package:flutter/material.dart';

class BrowseCard extends StatelessWidget {
  final String title;
  final Color color1;
  final Color color2;

  const BrowseCard(
      {super.key,
      required this.title,
      required this.color1,
      required this.color2});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width / 2.25,
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            color1,
            color2,
          ])),
      child: Text(title,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)),
    );
  }
}
