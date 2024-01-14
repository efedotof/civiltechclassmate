import 'package:flutter/material.dart';

class ProfileCards extends StatefulWidget {
  const ProfileCards({super.key});

  @override
  State<ProfileCards> createState() => _ProfileCardsState();
}

class _ProfileCardsState extends State<ProfileCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Text(
              'Фамилия Имя Отчество',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '1 курс, группа 21. БО1-вшм',
            style: TextStyle(fontSize: 18, color: Color(0xFF5D5D61)),
          )
        ],
      ),
    );
  }
}
