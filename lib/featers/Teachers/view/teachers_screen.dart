import 'package:civiltechclassmate/model/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()  
class TeachersScreen extends StatefulWidget {
  const TeachersScreen({super.key});

  @override
  State<TeachersScreen> createState() => _TeachersScreenState();
}

class _TeachersScreenState extends State<TeachersScreen> {
   final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var appFile = context.watch<ApplicationModel>();
    appFile.namesTeachersScreen.sort();
    return Scaffold(
    appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.16),
        child:appbar(context, _searchController),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: columnWidgets(context, appFile),
      ),
    );
  }
}