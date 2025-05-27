import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class MyAppBar extends AppBar {
  final String name;
  final BuildContext context;

  MyAppBar(this.context, {
    super.key,
    required this.name,
  }) : super(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BackButton(onPressed: () {Navigator.pop(context);}),
          GestureDetector(
            child: Row(
              children: [
                Image.asset("assets/images/doshpot.png", height: 50),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }
          ),
          IconButton(
            icon: Icon(Icons.person, size: 32),
            onPressed: () {},
          )
        ],
      ),
    );
}
