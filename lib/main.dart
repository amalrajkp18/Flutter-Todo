import 'package:flutter/material.dart';
import 'package:todo_app/model/todo_model/object_box.dart';

import 'controller/todo_controller/todo_notifier.dart';
import 'controller/todo_controller/todo_provider.dart';
import 'core/theme/app_theme.dart';
import 'view/pages/home/home_page.dart';

late ObjectBox objectBox;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // intializing tododb
  objectBox = await ObjectBox.create();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TodoProvider(
      todoNotifier: TodoNotifier(),
      child: MaterialApp(
        title: 'Todo App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appTheme(context),
        home: const HomePage(),
      ),
    );
  }
}
