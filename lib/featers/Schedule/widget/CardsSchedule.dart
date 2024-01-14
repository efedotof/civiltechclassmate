import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../model/model.dart';
import 'CardsSchedularWidget/cards.dart';

class CardsSchedule extends StatefulWidget {
  const CardsSchedule({super.key, required this.name, required this.numbershudel});
  final String name;
  final int numbershudel;
  @override
  State<CardsSchedule> createState() => _CardsScheduleState();
}

class _CardsScheduleState extends State<CardsSchedule> {
  @override
  Widget build(BuildContext context) {
    var appFile = context.read<ApplicationModel>();
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF1A2330),
        ),
        child: Column(
          children: [
             RowGetColorsTypePara(typeofoccupation: appFile.typeofoccupation(appFile.arr(widget.name)), numbershudel: widget.numbershudel,),
            const SizedBox(
              height: 10,
            ),
            NameContainer(name: appFile.name(appFile.arr(widget.name)), fontsize: 29, fontweigth:FontWeight.w600, colors:Colors.white),
            const SizedBox(
              height: 6,
            ),
            NameContainer(name: appFile.surnamefirstnamepatronymicofteacher(appFile.arr(widget.name)), fontsize: 18, fontweigth:FontWeight.w500, colors: const Color(0xFF7A7B82)),
            const SizedBox(
              height: 12,
            ),
            NameContainer(name: "${appFile.audience(appFile.arr(widget.name))}, ${appFile.getFrame(appFile.audience(appFile.arr(widget.name)))}", fontsize: 18, fontweigth:FontWeight.w500, colors: const Color(0xFF7A7B82)),
          ],
        ),
      ),
    );
  }
}
