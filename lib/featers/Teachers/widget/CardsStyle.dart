import 'package:flutter/material.dart';

class CardsStyle extends StatefulWidget {
  const CardsStyle({super.key, required this.name});

  final String name;

  @override
  State<CardsStyle> createState() => _CardsStyleState();
}

class _CardsStyleState extends State<CardsStyle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      color: const Color(0xFF1C1C1E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.name,style: const TextStyle(fontSize: 20, color:  Colors.white),),
          
          const Text('Фамилия Имя Отчество',style: TextStyle(fontSize: 16, color:  Color(0xFF5D5D61)),),

        ],
      ),
    );
  }
}