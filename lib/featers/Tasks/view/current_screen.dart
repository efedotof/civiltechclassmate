import 'package:civiltechclassmate/local_storage/tasks/Tasks.dart';
import 'package:civiltechclassmate/model/UserModel/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';
@RoutePage()  
class CurrentScreen extends StatefulWidget {
  const CurrentScreen({super.key});

  @override
  State<CurrentScreen> createState() => _CurrentScreenState();
}

class _CurrentScreenState extends State<CurrentScreen> {

  final tasksBox = Hive.box<Tasks>('tasks');



  




  @override
  Widget build(BuildContext context) {
    var userModel = context.watch<UserModel>();
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
        child: ValueListenableBuilder(
          valueListenable: tasksBox.listenable(), 
          builder: (context,Box<Tasks> box, _ ){
            return ListView.builder(
              itemCount: box.length,
              
              itemBuilder: (context, index){
      
                final task = box.getAt(index)!;
      
                  return TasksCard(task: task, index: index,);
      
              } 
            );
          }
          ),
      ),
      
      floatingActionButton: FloatingActionButton(backgroundColor: const Color(0xFF0984FF),onPressed: (){

        ShowBottomBars(tasksBox: tasksBox).showBottomModal(context, userModel);

        
      }, child: const Icon(Icons.add, color: Colors.white,),),
    );
  }
}
//var todoBox = await Hive.openBox<Tasks>('tasks_box');