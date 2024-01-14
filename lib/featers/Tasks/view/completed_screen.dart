
import 'package:civiltechclassmate/featers/Tasks/widget/widget.dart';
import 'package:civiltechclassmate/local_storage/completed/Complited.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hive_flutter/hive_flutter.dart';
@RoutePage()  
class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  final complitedBox = Hive.box<Complited>('complited');


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
        child: ValueListenableBuilder(
          valueListenable: complitedBox.listenable(), 
          builder: (context,Box<Complited> box, _ ){
            return ListView.builder(
              itemCount: box.length,
              
              itemBuilder: (context, index){
      
                final complited = box.getAt(index)!;
      
                  return ComplitedCard(complited: complited, index: index,);
      
              } 
            );
          }
          ),
      ),
     
    );
  }
}