import 'package:flutter/material.dart';
import 'package:flutter_mini_project/data/data.dart';
import 'package:flutter_mini_project/search/browse_card.dart';
import 'package:flutter_mini_project/search/search_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String value = 'Devotional';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Search',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.centerRight,
                      child: const Icon(
                        Icons.more_vert_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gapPadding: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gapPadding: 10),
                    labelText: 'Search',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.green,
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(14, 14, 15, 1),
                  ),
                ),
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: searchlist
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          value = e;
                          setState(() {});
                        },
                        child: SearchCard(
                          title: e,
                          select: (value == e) ? true : false,
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  '     Browse All',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  BrowseCard(
                    title: 'MadeForYou',
                    color1: Color.fromRGBO(224, 47, 207, 1),
                    color2: Color.fromRGBO(0, 193, 136, 1),
                  ),
                  BrowseCard(
                    title: 'Charts',
                    color1: Color.fromRGBO(10, 60, 236, 1),
                    color2: Color.fromRGBO(77, 212, 172, 1),
                  ),
                  BrowseCard(
                    title: 'Discover',
                    color1: Color.fromRGBO(10, 60, 236, 1),
                    color2: Color.fromRGBO(217, 221, 1, 1),
                  ),
                  BrowseCard(
                    title: 'New Release',
                    color1: Color.fromRGBO(221, 16, 16, 1),
                    color2: Color.fromRGBO(14, 49, 174, 1),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
