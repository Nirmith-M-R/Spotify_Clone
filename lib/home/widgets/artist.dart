import 'package:flutter/material.dart';
import 'package:flutter_mini_project/data/data.dart';

class Artist extends StatelessWidget {
  const Artist({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 175,
        child: ListView.builder(
          itemCount: artists.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            final a = artists[index];
            return Container(
              width: 155,
              padding: const EdgeInsets.only(
                  right: 15, left: 15, top: 15, bottom: 0),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                      height: 125, width: 125, child: Image.asset(a['image'])),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(a['name'],
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white))
                ],
              ),
            );
          },
        ));
  }
}
