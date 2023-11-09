import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  final String title;
  final bool select;
  const SearchCard({super.key, required this.title, required this.select});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: select ? Colors.green : const Color.fromRGBO(14, 15, 15, 1),
      ),
      padding: const EdgeInsets.all(14),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
      ),
    );
  }
}
