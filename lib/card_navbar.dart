import 'dart:developer';

import 'package:flutter/material.dart';

class CardNavbar extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  final Color navbarColor;

  CardNavbar(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap,
      required this.navbarColor});

  @override
  State<CardNavbar> createState() => _CardNavbarState();
}

class _CardNavbarState extends State<CardNavbar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        color: widget.navbarColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.icon),
            const SizedBox(height: 4),
            Text(widget.title)
          ],
        ),
      ),
    );
  }
}
