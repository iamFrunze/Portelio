import 'package:flutter/material.dart';
import 'package:portelio/presentation/screens/auth/auth_screen.dart';
import 'package:portelio/presentation/screens/details_of_work/bloc/details_of_work_screen.dart';
import 'package:portelio/presentation/screens/list_of_work/list_of_work.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      title: 'Portelio',
      home: AuthScreen(),
    );
  }
}
