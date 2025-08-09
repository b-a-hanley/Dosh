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
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BackButton(onPressed: () {Navigator.pop(context);}),
          GestureDetector(
            child: Row(
              children: [
                Image.asset("assets/images/doshpot.png", width: 100, height: 40)
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
