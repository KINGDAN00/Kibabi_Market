import 'package:flutter/material.dart';
import 'package:kibabi_market/Menu.dart';
import 'package:kibabi_market/ecommerce/ecommerce1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KIBABI MARKET',
      // theme: ThemeData(
      //   primarySwatch: Colors.deepPurple,
      // ),
      home: Menu(),

    );
  }
}
