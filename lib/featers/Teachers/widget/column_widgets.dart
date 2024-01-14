import 'package:flutter/material.dart';

import 'CardsStyle.dart';

Column columnWidgets(BuildContext context, appFile) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        33,
        (index) {
          final letter = String.fromCharCode('А'.codeUnitAt(0) + index);
          final namesStartingWithLetter = appFile.namesTeachersScreen
              .where((String name) => name.toUpperCase().startsWith(letter))
              .toList();
          if (namesStartingWithLetter.isNotEmpty) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    letter,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D5D61),
                    ),
                  ),
                ),
                Column(
                    children: List.generate(
                        namesStartingWithLetter.length,
                        (index) => CardsStyle(
                              name: namesStartingWithLetter[index],
                            ))),
              ],
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
