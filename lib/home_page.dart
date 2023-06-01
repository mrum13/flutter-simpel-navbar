import 'package:flutter/material.dart';
import 'package:navbar_statefull/card_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List<Map> listNavbar = [
    {'title': 'Home', 'icon_data': Icons.home},
    {'title': 'List', 'icon_data': Icons.list},
    {'title': 'Search', 'icon_data': Icons.search},
    {'title': 'Account', 'icon_data': Icons.people}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: const SizedBox()),
          Container(
              width: double.infinity,
              height: 62,
              child: Row(
                children: List.generate(
                    4,
                    (index) => Expanded(
                        child: CardNavbar(
                            icon: listNavbar[index]['icon_data'],
                            title: listNavbar[index]['title'],
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            navbarColor: selectedIndex == index
                                ? Colors.amber
                                : Colors.white))),
              ))
        ],
      )),
    );
  }
}
