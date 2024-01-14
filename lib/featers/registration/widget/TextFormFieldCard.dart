import 'package:civiltechclassmate/model/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextFormFieldCard extends StatelessWidget {
  const TextFormFieldCard({
    super.key,
    required this.text,
  });


  final String text;

  @override
  Widget build(BuildContext context) {




    return TextFormField(
     
      onChanged:(value){
         switch(text){
          case 'Имя и фамилия':
            context.read<UserModel>().setName(value);
          case 'Почта':
            context.read<UserModel>().setEmail(value);
          case 'Пароль':
            context.read<UserModel>().setPass(value);
        }
      },
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(color: Color(0xFF545456)),
      ),
    );
  }
}
