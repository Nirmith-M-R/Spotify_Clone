import 'package:flutter/material.dart';
import 'package:flutter_mini_project/more/widgets/activity.dart';
import 'package:flutter_mini_project/more/widgets/more_tile.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 54,
              ),
              const MoreTitle(title: 'Your Library'),
              const SizedBox(height: 20),
              const Text(
                'Your Activities',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              const ActivityCard(title: 'Liked Songs', icon: Icons.favorite),
              Divider(
                color: Colors.grey.shade800,
              ),
              const ActivityCard(title: 'Followed Artist', icon: Icons.people),
              Divider(
                color: Colors.grey.shade800,
              ),
              const ActivityCard(title: 'Followed Podcast', icon: Icons.mic),
            ],
          ),
        ),
      ),
    );
  }
}
