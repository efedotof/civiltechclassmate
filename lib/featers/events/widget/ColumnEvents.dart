
import 'package:flutter/material.dart';

class ColumnEvents extends StatelessWidget {
  const ColumnEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10,),
        const Text(
          'Выбор студентов',
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
                  10,
                  (index) => 
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                        horizontal:MediaQuery.of(context).size.width * 0.01),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.01,
                          vertical:MediaQuery.of(context).size.height * 0.01),
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.blue),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '22 октября 2022',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    '19:00',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Газпром Арена',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'Imagine\nDragons',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'Мировой тур героев стадионного инди-\nрока с новым альбомом',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                     const  Positioned(
                        right: 4,
                        top: 4,
                        
                        child:  Icon(Icons.bookmark, color: Colors.yellow,))


                    ],
                  )),
                    ),
        ),
      ],
    );
  }
}
