import 'package:flutter/material.dart';

class CirAvatar extends StatelessWidget {
  const CirAvatar({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            radius: 4,
            backgroundColor: currentPage == index
                ? const Color(0xFF0A8DFF)
                : const Color(0xFF3A3A3C),
          ),
        ),
      ),
    );
  }
}
