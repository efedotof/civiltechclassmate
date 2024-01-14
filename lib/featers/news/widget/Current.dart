import 'package:flutter/material.dart';

class Current extends StatefulWidget {
  const Current({super.key});

  @override
  State<Current> createState() => _CurrentState();
}

class _CurrentState extends State<Current> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.23,
            decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.orange
      ),

          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          Container(
            alignment: Alignment.topLeft,
            width: MediaQuery.of(context).size.width * 0.9,
            child: const Text('СПБГУ обьявляет конкурс научных и социальных проектов имени Андрея Павленко',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600  ,color: Colors.white),),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
           SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: const Text('21 октября 2021',style: TextStyle(fontSize: 16, color: Color(0xFF454449)),),
          )
        ],
      ),
    );
  }
}