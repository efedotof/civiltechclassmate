import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()   
class StayInTouchScreen extends StatefulWidget {
  const StayInTouchScreen({super.key});

  @override
  State<StayInTouchScreen> createState() => _StayInTouchScreenState();
}

class _StayInTouchScreenState extends State<StayInTouchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.yellow,
            ),
            const SizedBox(height: 10,),
            const Text('Будь в курсе', style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold, color: Colors.white),),
            const SizedBox(height: 10,),
            const Text('Каждый день редакция университета\nдержит вас в курсе новостей вуза а\nтакже подбирает варианты досуга', style: TextStyle(fontSize: 18, color: Color(0xFF545456)),textAlign: TextAlign.center,)
      
          ],
        ),
      ),




    );
  }
}