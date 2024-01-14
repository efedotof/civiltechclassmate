import 'package:civiltechclassmate/model/model.dart';
import 'package:flutter/material.dart';

class UserModel with ChangeNotifier {
  String name = '';
  String email = '';
  String pass = '';
  String group = '';

  AuthModel auth = AuthModel();


  void setName( names){
    name = names;
    notifyListeners();
  }
  void setEmail(emails){
    email = emails;
    notifyListeners();
  }
  void setPass(passs){
    pass = passs;
    notifyListeners();
  }
  void setGroup(groups){
    group = groups;
    notifyListeners();
  }

  void allDataToAuth(context,names, emails, passs, groups){
    setGroup(groups);
    setPass(passs);
    setEmail(emails);
    setName( names);
   
  }
}