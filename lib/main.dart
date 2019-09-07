import 'package:flutter/material.dart';
import 'package:flutter_hello/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Imagens Dogs",
      theme: ThemeData(primaryColor: Colors.blue, primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
