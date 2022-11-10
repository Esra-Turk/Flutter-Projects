// ignore: must_be_immutable
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({super.key, required this.status, required this.number});
  int number;
  bool status;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width < 600 ? width : width / 2,
      color: width < 600 ? Colors.blue.withAlpha(200) : Colors.blue,
      child: Center(
        child: Text(
          '${widget.number}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
