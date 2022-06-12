import 'package:flutter/material.dart';

import 'header_with_search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView
        //enable scrolling in small devices
        (
      child: Column(
        children: [
          HeaderWithSearch(size: size),
          Container(
            height: 24,
            child: Stack(children: [
              Text('Recommended',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ]),
          )
        ],
      ),
    );
  }
}
