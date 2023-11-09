import 'package:flutter/material.dart';
import 'package:flutter_mini_project/home/widgets/artist.dart';
import 'package:flutter_mini_project/home/widgets/top_music.dart';
import 'package:flutter_mini_project/home/widgets/weekly_music_list.dart';
import 'package:flutter_mini_project/widgets/custom_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 54,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Good Morning',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      )),
                  IconButton(
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.electric_bolt_outlined,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'Weakly',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                          text: 'Music',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const WeeklyMusicList(),
              const SizedBox(
                height: 16,
              ),
              const CustomTitle(
                title: 'Your Top Mixes',
              ),
              const SizedBox(
                height: 12,
              ),
              const TopMusic(),
              const SizedBox(
                height: 12,
              ),
              const CustomTitle(
                title: 'Suggested Artists',
              ),
              const SizedBox(
                height: 24,
              ),
              const Artist()
            ],
          ),
        ),
      ),
    );
  }
}
