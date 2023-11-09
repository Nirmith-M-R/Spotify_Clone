import 'package:flutter/material.dart';
import 'package:flutter_mini_project/data/data.dart';

class WeeklyMusicList extends StatelessWidget {
  const WeeklyMusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        itemCount: slider.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          final s = slider[index];
          return Column(
            children: [
              Container(
                height: 125,
                width: 240,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(s['image']),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                s['title'],
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
