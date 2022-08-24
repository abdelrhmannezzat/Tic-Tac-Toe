import 'package:flutter/material.dart';
import 'package:testing/bmi_result.dart';

class ResultScreen extends StatelessWidget {
  int p;
  ResultScreen({
    required this.p,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("${p == 1?"Player one won":(p == 0?"DRAW":"Player two won")}",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
