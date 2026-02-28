

import 'package:flutter/material.dart';

class Textcounter extends StatelessWidget {
  const Textcounter({super.key, required this.counter, this.color = Colors.black});
  final int counter ;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$counter",
       style: TextStyle(fontSize: 50,color: color),);
  }
}