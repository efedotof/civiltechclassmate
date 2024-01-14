import 'package:flutter/material.dart';

class NameContainer extends StatelessWidget {
  const NameContainer({super.key,
    required this.name,
    required this.fontsize,
    required this.fontweigth,
    required this.colors,
  });

  final String name;
  final double? fontsize;
  final FontWeight? fontweigth;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Text(
          name,
          style:  TextStyle(
              color: colors, fontSize: fontsize, fontWeight: FontWeight.w600),
        ));
  }
}
