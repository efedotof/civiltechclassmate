import 'package:flutter/material.dart';

class FilterButtons extends StatelessWidget {
  const FilterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.04,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: const Color(0xFF272528)),
      alignment: Alignment.center,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Фильтры',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
