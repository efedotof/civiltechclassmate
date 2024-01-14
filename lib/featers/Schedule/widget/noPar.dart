import 'package:flutter/material.dart';

class NoPar extends StatelessWidget {
  const NoPar({
    super.key,
    required this.text,
    required this.size,
    required this.colors,
    required this.fontweigth,
    required this.textAlign,
  });

  final String text;
  final double size;
  final Color colors;
  final FontWeight? fontweigth;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: fontweigth, color: colors),
      textAlign: textAlign,
    );
  }
}
