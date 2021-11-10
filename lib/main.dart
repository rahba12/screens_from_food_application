import 'package:flutter/material.dart';
import 'package:screens_from_food_application/order_screen/_foodanddrinks.dart';
import 'package:screens_from_food_application/order_screen/_orderscreen.dart';
import 'package:screens_from_food_application/order_screen/_welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderScreen(),
    );
  }
}
