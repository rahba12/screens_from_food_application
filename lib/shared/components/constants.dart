import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

Widget defaultButton({
  double height = 40,
  double width = double.infinity,
  Color background = Colors.blue,
  required Function onPressed,
  required String text,
}) =>
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: background,
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

Widget defaultButton2({
  required Function onPressed,
  required String text,
}) =>
    ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.brown),
          fixedSize:
              MaterialStateProperty.resolveWith((states) => Size(200, 30)),
          elevation: MaterialStateProperty.resolveWith(
            (states) => 20,
          ),
        ));

Widget dividerLine() => Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Divider(
        height: 3,
        thickness: 2,
        color: Colors.grey[300],
      ),
    );

void navigateTo(context, widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) => widget(),
    ));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => widget(),
      ),
      (Route<dynamic> route) => false,
    );
