
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:civiltechclassmate/router/router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthModel {
  final supabase = Supabase.instance.client;
  

  Future registration(context,email, pass, username, group) async {
    try {
       final AuthResponse res = await supabase.auth.signUp(
        email: email,
        password: pass,
      );
      final Session? session = res.session;
      final User? user = res.user;
      AutoRouter.of(context).push(const MainpageRoute());
    } catch (e) {
      log('error reg : $e');
    }
  }

  Future signin(context, email, pass) async{
    try {
      final AuthResponse res = await supabase.auth.signInWithPassword(
        email: email,
        password: pass,
      );
      final Session? session = res.session;
      final User? user = res.user;
      AutoRouter.of(context).push(const MainpageRoute());
    } catch (e) {
       log('error log : $e');
    }
  }




}