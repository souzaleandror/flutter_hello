import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello Flutter",
        ),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      //child: Center(child: _text()),
      child: _img(),
    );
  }

  _img() {
    return Image.asset(
      "assets/images/dog1.png",
      width: 100,
      height: 100,
      fit: BoxFit.contain,
    );
  }

  _text() {
    return Text(
      "Hello World",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.dotted,
      ),
    );
  }
}
