import 'dart:io';
import 'package:civiltechclassmate/local_storage/completed/Complited.dart';
import 'package:civiltechclassmate/local_storage/tasks/Tasks.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path/path.dart';

class InfoComplited {
  final Complited complited;
  final int indexs;
  InfoComplited(BuildContext context, {required this.complited, required this.indexs});


  final tasksBox = Hive.box<Tasks>('tasks');
  final complitedBox = Hive.box<Complited>('complited');

  void showBottomModal(BuildContext context) {
    double keyboardHeight = 0.0;

    bool light1 = false;

    String date = complited.date;
     final MaterialStateProperty<Icon?> thumbIcon =
        MaterialStateProperty.resolveWith<Icon?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return const Icon(Icons.check);
        }
        return const Icon(Icons.close);
      },
    );

    List<File> stringsToFiles(List<String> paths) {
      return paths.map((path) => File(path)).toList();
    }



    List<String> fileString = complited.file.split(',');


    List<File> files = stringsToFiles(fileString);

    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          reverse: true,
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + keyboardHeight,
          ),
          child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return SingleChildScrollView(
              child: Container(
                color: const Color(0xFF1C1C1E),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Center(
                      child: Text(
                        'Информация',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2C2C2E),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(complited.heading,
                                style: const TextStyle(color: Colors.white),),
                          const SizedBox(height: 20,),
                          Text(complited.description,
                                style: const TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      padding: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2C2C2E),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.add_circle,
                                color: Color(0xFF9F9FA4),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Прикрепленные файлы',
                                style: TextStyle(color: Color(0xFF939394)),
                              )
                            ],
                          ),
                           files.isNotEmpty
                              ? Column(
                                  children: List.generate(
                                      files.length,
                                      (index) => Padding(
                                            padding:
                                                const EdgeInsets.all(8.0),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Icon(
                                                      Icons
                                                          .file_copy_outlined,
                                                      color:
                                                          Color(0xFF5D5D60),
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      basename(
                                                          files[index].path),
                                                      style: const TextStyle(
                                                          color: Color(
                                                              0xFFCBCBCC)),
                                                    ),
                                                  ],
                                                ),
                                               
                                              ],
                                            ),
                                          )),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2C2C2E),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Срок до',
                            style: TextStyle(color: Color(0xFF939394)),
                          ),
                          Row(
                            children: [
                              Text(
                                date,
                                style:
                                    const TextStyle(color: Color(0xFF515154)),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                             
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    

                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.44,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: const Color(0xFF0A84FF)),
                              onPressed: () {
                                 complitedBox.deleteAt(indexs);
                               tasksBox.add(Tasks(heading: complited.heading, description: complited.description, file: complited.file, subject: complited.subject));
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Актуально',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.44,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor: const Color(0xFF2C2C2E),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Отменить',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
