import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.28,
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.yellow,
          border: Border.all(
                color: const Color(0xFF163D6A),
                width: 3,
              ),
        ),
      ),
    );
  }
}