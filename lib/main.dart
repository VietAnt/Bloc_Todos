import 'package:flutter/material.dart';
import 'package:pub_bloc/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Patten - Todos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.greenAccent,
        appBarTheme: const AppBarTheme(
          color: Colors.amberAccent,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
