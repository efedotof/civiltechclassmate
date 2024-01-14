import 'package:civiltechclassmate/local_storage/tasks/Tasks.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'bottomModal/void_replace_bottom.dart';

class TasksCard extends StatefulWidget {
  const TasksCard({
    super.key,
    required this.task,
    required this.index,
  });

  final Tasks task;
  final int index;
  @override
  State<TasksCard> createState() => _TasksCardState();
}

class _TasksCardState extends State<TasksCard> {
  final tasksBox = Hive.box<Tasks>('tasks');
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01),
      child: GestureDetector(
        onTap: (){
          ShowBottomBarsReplace(context, task: widget.task, indexs: widget.index, ).showBottomModal(context );
          },
        child: Stack(
          children: [
            Container(
          padding: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: const Color.fromARGB(255, 36, 36, 39)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.task.heading,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                widget.task.description,
                style: const TextStyle(color: Color(0xFF565659), fontSize: 18),
              ),
            ],
          ),
        ),

    if(selected == true)  Positioned(
          right: 10,
          top: 4,
          child: Row(
            children: [
              const Icon(Icons.check, color: Colors.white,),
              const SizedBox(width: 4,),
              GestureDetector(
                onTap: (){
                  tasksBox.deleteAt(widget.index);
                },
                child: const Icon(Icons.delete, color: Colors.white,)),
            ],
          )
           ),
          ],
        )
      ),
    );
  }
}
