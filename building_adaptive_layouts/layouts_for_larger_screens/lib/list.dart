import 'package:flutter/material.dart';

Widget createlist(handleListTileClicked) {
  return ListView.builder(
    itemCount: 15,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
          child: SizedBox(
            width: 100,
            height: 70,
            child: ListTile(
              onTap: () {
                handleListTileClicked(index + 1);
              },
              title: Text(
                '${index + 1}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
