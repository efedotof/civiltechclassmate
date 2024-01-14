import 'package:civiltechclassmate/ThemeMyApp/CustomTheme.dart';
import 'package:civiltechclassmate/ThemeMyApp/theme.dart';
import 'package:civiltechclassmate/local_storage/completed/Complited.dart';
import 'package:civiltechclassmate/local_storage/tasks/Tasks.dart';
import 'package:civiltechclassmate/model/model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CustomTheme().loadTheme();
  const supabaseUrl = 'https://adgjjdurrijkujdnbnij.supabase.co';
  const supabaseKey = String.fromEnvironment('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFkZ2pqZHVycmlqa3VqZG5ibmlqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDUwNjkwOTIsImV4cCI6MjAyMDY0NTA5Mn0.ak2KU1VEUUY9rA1c8q4mZP3ZhKLhMZSqv-rWo50ob9I');
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  await Hive.initFlutter();
  Hive.registerAdapter(TasksAdapter());
  Hive.registerAdapter(ComplitedAdapter());
  await Hive.openBox<Tasks>('tasks');
  await Hive.openBox<Complited>('complited');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => ApplicationModel()),
        ChangeNotifierProvider(create: (_) => UserModel())
      ],
      child: MaterialApp.router(
        theme: theme(),
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
