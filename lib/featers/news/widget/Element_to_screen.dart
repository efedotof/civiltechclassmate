import 'package:flutter/material.dart';

import 'widget.dart';

class ElementToScreen extends StatelessWidget {
  const ElementToScreen({super.key,
    required this.text
  
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 29, 
            fontWeight: FontWeight.bold, 
            color: Colors.white
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(20,(index) => 
            const Padding(
              padding:  EdgeInsets.only(right: 11.0),
              child: Current(),
                    )
              ),
          ),
        )
      ],
    );
  }
}
