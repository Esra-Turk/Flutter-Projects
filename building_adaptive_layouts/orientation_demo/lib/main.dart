import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.black12,
        body: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? _buildVerticalLayout()
                : _buildHorizontalLayout();
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

Widget listViewBuilder() {
  return ListView.builder(
    itemCount: 12,
    itemBuilder: (BuildContext context, int index) {
      return const ListTile(
        title: Text(
          "Demo Data",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      );
    },
  );
}

// ignore: camel_case_types
class _buildVerticalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 60),
              child: Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.black,
              ),
            ),
          ),
          const Text(
            'Deven Joshi',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: listViewBuilder(),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class _buildHorizontalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.account_circle,
                    size: 100,
                    color: Colors.black,
                  ),
                  Text(
                    'Deven Joshi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: listViewBuilder(),
          ),
        ],
      ),
    );
  }
}
