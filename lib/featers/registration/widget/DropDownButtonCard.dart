import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/model.dart';

class DropDownButtonCards extends StatefulWidget {
  const DropDownButtonCards({
    super.key,
  });


  @override
  State<DropDownButtonCards> createState() => _DropDownButtonCardsState();
}

class _DropDownButtonCardsState extends State<DropDownButtonCards> {
    String? selectedGroup;
  @override
  Widget build(BuildContext context) {
    var appFile = context.read<ApplicationModel>();
    return DropdownButton<String>(
      items: appFile.groupSelected.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: const TextStyle(color: Color(0xFF545456))),
        );
      }).toList(),
      value: selectedGroup,
      hint: const Text('Выберите группу',
          style: TextStyle(color: Color(0xFF545456))),
      onChanged: (String? value) {
        setState(() {
          selectedGroup = value;
          context.read<UserModel>().setGroup(value);
        });
      },
    );
  }
}
