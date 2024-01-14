import 'package:flutter/material.dart';

class CabinProfilesCards extends StatefulWidget {
  const CabinProfilesCards(
      {super.key, required this.color, required this.icon, required this.text});

  final Color color;
  final Icon icon;
  final String text;

  @override
  State<CabinProfilesCards> createState() => _CabinProfilesCardsState();
}

class _CabinProfilesCardsState extends State<CabinProfilesCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: widget.color,
                  ),
                  alignment: Alignment.center,
                  child: widget.icon,
                ),
                const SizedBox(
                  width: 11,
                ),
                Text(
                  widget.text,
                  style: const TextStyle(fontSize: 19, color: Colors.white),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF4B4B4F),
            ),
          ],
        ),
        const Divider(
          height: 1,
          thickness: 1,
          color: Color(0xFF252528),
        ),
      ],
    );
  }
}
