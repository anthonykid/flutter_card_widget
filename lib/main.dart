import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          margin: EdgeInsets.all(10), //we make the margin
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, "Account Box"), // this is the icon and text we would use
              buildCard(Icons.adb, "Android"), //this is the icon and text we would use
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card( //we make the return here
      elevation: 15, //we give the elevation is 5
      child: Row( //and we use row in here
        children: <Widget>[
          Container(margin: EdgeInsets.all(5),child: Icon(iconData, color: Colors.red,)), //inside the array we can insert the margin, icon, and colors
          Text(text) // text we put above
        ],
      ),
    );
  }
}
