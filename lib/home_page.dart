// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final logout = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(6.0),
        child: Text(
          'LogOut',
          style: TextStyle(fontSize: 10.0, color: Colors.white),
        ),
      ),
    );

    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/logo.JPG'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Alucard',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: const [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[logout, alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
