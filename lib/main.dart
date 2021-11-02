import 'package:bestdropdown/dropdown.dart';
import 'package:bestdropdown/screens/home_screen.dart';
import 'package:bestdropdown/side_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home:
   HomeScreen()
    );
  }
}

