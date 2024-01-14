import 'dart:io';

import 'package:civiltechclassmate/local_storage/tasks/Tasks.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class ShowBottomBars {
  Box<Tasks> tasksBox;
  ShowBottomBars({required this.tasksBox});
  


  
  void showBottomModal(BuildContext context, userModel) {
    double keyboardHeight = 0.0;

    TextEditingController controller1 = TextEditingController();

    TextEditingController controller2 = TextEditingController();

    bool light1 = false;

    String date = 'Без сроков';

    List<File> files = [];

    final MaterialStateProperty<Icon?> thumbIcon =
        MaterialStateProperty.resolveWith<Icon?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return const Icon(Icons.check);
        }
        return const Icon(Icons.close);
      },
    );

    Future addFile(StateSetter setState) async {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'doc'],
      );
      if (result != null) {
        setState(() {
          files = result.paths.map((path) => File(path!)).toList();
        });
      } else {}
    }

    Future selectDay(StateSetter setState) async {
      DateTime selectedDate = DateTime.now();
      showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return SingleChildScrollView(
                reverse: true,
                padding: EdgeInsets.only(
                  bottom:
                      MediaQuery.of(context).viewInsets.bottom + keyboardHeight,
                ),
                child: SingleChildScrollView(
                  child: Container(
                      color: const Color(0xFF1C1C1E),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Center(
                            child: Text(
                              'Срок до',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 400,
                            child: ScrollDatePicker(
                              scrollViewOptions:
                                  const DatePickerScrollViewOptions(
                                      day: ScrollViewDetailOptions(
                                        textStyle:
                                            TextStyle(color: Colors.white),
                                      ),
                                      year: ScrollViewDetailOptions(
                                        textStyle:
                                            TextStyle(color: Colors.white),
                                      ),
                                      month: ScrollViewDetailOptions(
                                        textStyle:
                                            TextStyle(color: Colors.white),
                                      )),
                              options: const DatePickerOptions(
                                backgroundColor: Color(0xFF1C1C1E),
                              ),
                              minimumDate: DateTime.now(),
                              maximumDate: DateTime(2055, 12, 31),
                              selectedDate: selectedDate,
                              onDateTimeChanged: (DateTime value) {
                                setState(() {
                                  selectedDate = value;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.44,
                                child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF0A84FF)),
                                    onPressed: () {
                                      List<String> das =
                                          selectedDate.toString().split(' ');
                                      setState(() {
                                        date = das[0];
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Добавить',
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
                      )),
                ));
          });
    }

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
                        'Новая задача',
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
                        children: [
                          TextField(
                            style: const TextStyle(color: Colors.white),
                            controller: controller1,
                            decoration: const InputDecoration(
                              hintText: 'Заголовок',
                              hintStyle: TextStyle(color: Color(0xFF5F5F62)),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF5F5F62)),
                              ),
                            ),
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.white),
                            controller: controller2,
                            maxLines: null,
                            decoration: const InputDecoration(
                              hintText: 'Описание задачи',
                              hintStyle: TextStyle(color: Color(0xFF5F5F62)),
                              border: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () => addFile(setState),
                      child: AnimatedContainer(
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
                                  'Прикрепить файл',
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
                                                  GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          files.removeAt(index);
                                                        });
                                                      },
                                                      child: const Icon(
                                                        Icons.cancel,
                                                        color: Colors.red,
                                                      )),
                                                ],
                                              ),
                                            )),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        selectDay(setState);
                      },
                      child: Container(
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
                                date != 'Без сроков'
                                    ? GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            date = 'Без сроков';
                                          });
                                        },
                                        child: const Icon(
                                          Icons.cancel,
                                          color: Colors.red,
                                        ))
                                    : Container(),
                              ],
                            )
                          ],
                        ),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Открыть задачу группе',
                                style: TextStyle(color: Color(0xFF939394)),
                              ),
                              Switch(
                                thumbIcon: thumbIcon,
                                value: light1,
                                onChanged: (bool value) {
                                  setState(() {
                                    light1 = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          light1
                              ? const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Предмет',
                                      style:
                                          TextStyle(color: Color(0xFF939394)),
                                    ),
                                    Text(
                                      'День недели, дата, время\nИмя преподавателя',
                                      style:
                                          TextStyle(color: Color(0xFF505053)),
                                    ),
                                  ],
                                )
                              : Container(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.44,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: const Color(0xFF0A84FF)),
                              onPressed: () {
                                print(files. toString());
                                tasksBox.add(
                                  
                                  Tasks(
                                    heading: controller1.text,
                                    description: controller2.text,
                                    file: files. toString(),
                                    date:date,
                                    subject: 'Нет предметов'
                                    )
                                  );
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Создать',
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
