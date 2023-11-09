import 'package:flutter/material.dart';

class FlexibleSpaceBarWidget extends StatelessWidget {
  const FlexibleSpaceBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 32),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/topHit.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Todays'.toUpperCase(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Inter')),
            Text('Top Hit'.toUpperCase(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Inter')),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.white60,
                  size: 14,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '676,378 likes',
                  style: TextStyle(color: Colors.white60, fontSize: 13),
                ),
                Icon(
                  Icons.watch,
                  color: Colors.white60,
                  size: 14,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '4hr 20min',
                  style: TextStyle(color: Colors.white60, fontSize: 13),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
