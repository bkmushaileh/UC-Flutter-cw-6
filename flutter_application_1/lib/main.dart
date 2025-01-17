import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kuwait City LandMarks',
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
