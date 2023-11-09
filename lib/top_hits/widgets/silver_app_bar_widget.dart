import 'package:flutter/material.dart';
import 'package:flutter_mini_project/top_hits/widgets/flexible_app_bar_widget.dart';

class SilverAppBarWidget extends StatelessWidget {
  const SilverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
        stretch: false,
        snap: true,
        floating: true,
        surfaceTintColor: Colors.black,
        backgroundColor: Colors.black,
        expandedHeight: 378,
        elevation: 1,
        pinned: true,
        titleSpacing: 16,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
          const SizedBox(
            width: 16,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
          )
        ],
        flexibleSpace: const FlexibleSpaceBarWidget());
  }
}
