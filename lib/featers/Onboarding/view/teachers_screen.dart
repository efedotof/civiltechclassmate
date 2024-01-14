import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()   
class TeachersScreenOnBoard extends StatefulWidget {
  const TeachersScreenOnBoard({super.key});

  @override
  State<TeachersScreenOnBoard> createState() => _TeachersScreenOnBoardState();
}

class _TeachersScreenOnBoardState extends State<TeachersScreenOnBoard> {
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
            const Text('Преподаватели', style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold, color: Colors.white),),
            const SizedBox(height: 10,),
            const Text('В приложении есть полный список\nваших преподавателей, к каждому из\nкоторых можно обратиться', style: TextStyle(fontSize: 18, color: Color(0xFF545456)),textAlign: TextAlign.center,)
      
          ],
        ),
      ),




    );
  }
}