import 'package:civiltechclassmate/featers/Schedule/widget/CardsSchedule.dart';
import 'package:flutter/material.dart';

Column columnCardsShedule(schedule) => Column(
                children: List.generate(
                  schedule.length,
                  (index) => schedule[index] != null
                      ? CardsSchedule(
                          name: schedule[index]!,
                          numbershudel: index,
                        )
                      : Container(),
                ),
              );