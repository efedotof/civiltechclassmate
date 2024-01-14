import 'package:flutter/material.dart';

class EventsCards extends StatefulWidget {
  const EventsCards({super.key});

  @override
  State<EventsCards> createState() => _EventsCardsState();
}

class _EventsCardsState extends State<EventsCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      width: MediaQuery.of(context).size.width * 0.97,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.orange,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
             crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  const Text('22 октября 2022',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.006,),
                  const Text('19:00',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                 ],
              ),
              const Icon(Icons.bookmark_border, color: Colors.white,size: 29,),



            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * 0.7,child: const Text('Газпром арена',style: TextStyle(fontSize: 16, color: Colors.white),)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              SizedBox(width: MediaQuery.of(context).size.width * 0.5,child: const Text('Imagine Dragons',style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold, color: Colors.white),)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              SizedBox(width: MediaQuery.of(context).size.width * 0.7,child: const Text('Мировой тур героев стадионного инди-рока с новым альбомом',style: TextStyle(fontSize: 18, color: Colors.white),)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.009,),
              Wrap(
                children: List.generate(4, (index) => Padding(
                  padding: const EdgeInsets.only(left:8.0, bottom: 8),
                  child: Container(alignment: Alignment.center,padding: const EdgeInsets.all(4),width: MediaQuery.of(context).size.width * 0.2,decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: const Color(0xFF3499FF)),child: const Text('Концерт',style: TextStyle(fontSize: 16, color: Colors.white),),),
                )),
              )
            ],
          )



        ],
      ),
    );
  }
}