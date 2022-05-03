import 'package:flutter/material.dart';
import 'package:login_ui/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/welcome_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          )
        )
      ),
      home: welcome_screen(),
    );
  }
}

