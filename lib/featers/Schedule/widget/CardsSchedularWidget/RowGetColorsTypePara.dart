import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../model/model.dart';

class RowGetColorsTypePara extends StatefulWidget {
  const RowGetColorsTypePara({super.key,
    required this.typeofoccupation,
    required this.numbershudel,
  });

  final String typeofoccupation;
  final int numbershudel;


  @override
  State<RowGetColorsTypePara> createState() => _RowGetColorsTypeParaState();
}

class _RowGetColorsTypeParaState extends State<RowGetColorsTypePara> {
  @override
  Widget build(BuildContext context) {
    var appFile = context.read<ApplicationModel>();
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: appFile.getColorsTypePara(widget.typeofoccupation),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    widget.typeofoccupation,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Text(
                  appFile.getTimeParaOfDay(widget.numbershudel),
                  style: const TextStyle(color: Color(0xFF545456)),
                ),
              ],
            );
  }
}