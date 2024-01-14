import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()   
class ListAndTastsScreen extends StatefulWidget {
  const ListAndTastsScreen({super.key});

  @override
  State<ListAndTastsScreen> createState() => _ListAndTastsScreenState();
}

class _ListAndTastsScreenState extends State<ListAndTastsScreen> {
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
            const Text('Расписание и задачи', style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold, color: Colors.white),),
            const SizedBox(height: 10,),
            const Text('Просматривайте расписание без\nошибок. добавляйте задачи и делитесь\n ими с одногруппниками', style: TextStyle(fontSize: 18, color: Color(0xFF545456)),textAlign: TextAlign.center,)
      
          ],
        ),
      ),




    );
  }
}