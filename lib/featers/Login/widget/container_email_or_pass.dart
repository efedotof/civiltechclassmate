import 'package:flutter/material.dart';

class ContainerEmailOrPass extends StatelessWidget {
  const ContainerEmailOrPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xFF2A2A2C),
      ),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Почта',
              hintStyle: TextStyle(color: Color(0xFF545456)),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Пароль',
              hintStyle: TextStyle(color: Color(0xFF545456)),
            ),
          ),
        ],
      ),
    );
  }
}
