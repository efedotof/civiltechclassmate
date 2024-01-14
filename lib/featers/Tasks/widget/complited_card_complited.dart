import 'package:civiltechclassmate/featers/Tasks/widget/bottomModal/infoComplited.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../../local_storage/completed/Complited.dart';

class ComplitedCard extends StatefulWidget {
  const ComplitedCard({
    super.key,
    required this.complited,
    required this.index,
  });

  final Complited complited;
  final int index;
  @override
  State<ComplitedCard> createState() => _ComplitedCardState();
}

class _ComplitedCardState extends State<ComplitedCard> {
  final complitedBox = Hive.box<Complited>('complited');
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01),
      child: GestureDetector(
        onTap: (){
          InfoComplited(context, complited: widget.complited, indexs: widget.index, ).showBottomModal(context );
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
                widget.complited.heading,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                widget.complited.description,
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
                  complitedBox.deleteAt(widget.index);
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
