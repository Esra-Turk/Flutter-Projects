import 'package:flutter/material.dart';
import 'list.dart';
import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen(
      {super.key,
      required this.status,
      required this.setStatus,
      required this.number,
      required this.setNumber});

  int number;
  Function setNumber;
  bool status;
  Function setStatus;

  @override
  State<FirstScreen> createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  void _handleListTileClicked(int number) {
    widget.setNumber(number);
    widget.setStatus(true);
  }

  void hideContainer() {
    widget.setStatus(false);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return widget.status && width < 600
        ? Stack(
            children: [
              Container(
                width: width < 600 ? width : width / 2,
                child: createlist(_handleListTileClicked),
              ),
              GestureDetector(
                onTap: hideContainer,
                child: SecondScreen(
                  status: widget.status,
                  number: widget.number,
                ),
              )
            ],
          )
        : Container(
            width: width < 600 ? width : width / 2,
            child: createlist(_handleListTileClicked),
          );
  }
}
