import 'package:flutter/material.dart';

class TextNameCompani extends StatelessWidget {
  const TextNameCompani({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
                  '@CloudByte_Solutions',
                  style: TextStyle(fontSize: 15, color: Color(0xFF545456)),
                  textAlign: TextAlign.center,
                );
  }
}