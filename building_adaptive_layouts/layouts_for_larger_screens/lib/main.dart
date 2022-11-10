import 'package:flutter/material.dart';
import 'package:layouts_for_larger_screens/second_screen.dart';
import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int number = 1;
  bool status = true;

  void setNumber(int number) {
    setState(() {
      this.number = number;
    });
  }

  void setStatus(bool status) {
    setState(() {
      this.status = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: status && width < 600
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  setStatus(false);
                },
              )
            : null,
      ),
      body: width > 600
          ? _buildTabletView(number, setNumber, status, setStatus)
          : _buildMobileView(number, setNumber, status, setStatus),
    );
  }
}

Widget _buildTabletView(
    int number, Function setNumber, bool status, Function setStatus) {
  return Row(
    children: [
      FirstScreen(
        number: number,
        setNumber: setNumber,
        status: status,
        setStatus: setStatus,
      ),
      SecondScreen(
        number: number,
        status: status,
      ),
    ],
  );
}

Widget _buildMobileView(
    int number, Function setNumber, bool status, Function setStatus) {
  return FirstScreen(
    number: number,
    setNumber: setNumber,
    status: status,
    setStatus: setStatus,
  );
}
