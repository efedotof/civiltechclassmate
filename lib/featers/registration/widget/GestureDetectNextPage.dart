
import 'package:auto_route/auto_route.dart';
import 'package:civiltechclassmate/model/model.dart';
import 'package:civiltechclassmate/router/router.dart';
import 'package:flutter/material.dart';

class GestureDetectNextPage extends StatefulWidget {
  const GestureDetectNextPage({super.key});

  @override
  State<GestureDetectNextPage> createState() => _GestureDetectNextPageState();
}

class _GestureDetectNextPageState extends State<GestureDetectNextPage> {
  AuthModel auth = AuthModel();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(const MainpageRoute());
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF0A8DFF),
        ),
        alignment: Alignment.center,
        child: const Text(
          'Зарегистрироваться',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
