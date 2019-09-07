import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hello/pages/hello_page1.dart';
import 'package:flutter_hello/pages/hello_page2.dart';
import 'package:flutter_hello/pages/hello_page3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello Flutter",
        ),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _text(),
            _pageView(),
            _buttons(context),
          ],
        ),
        //child: Center(child: _text()),
//      child: Center(
//        child: _img(),
//      ),
//      child: Center(
//        child: _button(),
//      ),
//      height: double.infinity,
//      width: double.infinity,
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.center,
//        mainAxisSize: MainAxisSize.max,
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          _button(),
//          _button(),
//          _button(),
//        ],
//      ),
      ),
    );
  }

  Container _pageView() {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 300,
      child: PageView(
        children: <Widget>[
          _img("assets/images/dog1.png"),
          _img("assets/images/dog2.png"),
          _img("assets/images/dog3.png"),
          _img("assets/images/dog4.png"),
          _img("assets/images/dog5.png"),
        ],
      ),
    );
  }

  Column _buttons(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context, "ListView",
                () => _onClickNavigator(context, HelloPage1())),
            _button(context, "Page 2",
                () => _onClickNavigator(context, HelloPage2())),
            _button(context, "Page 3",
                () => _onClickNavigator(context, HelloPage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context, "Snack", _onClickSnack),
            _button(context, "Dialog", _onClickDialog),
            _button(context, "Toast", _onClickToast),
          ],
        )
      ],
    );
  }

  _button(BuildContext context, String text, Function onPressed) {
    return RaisedButton(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      color: Colors.blue,
//      onPressed: () {
//        print("Clicou no Botao Ok");
//      },
      //onPressed: () => print("Clicou no Botao Ok"),
      //onPressed: _onClickOk(context),
      onPressed: onPressed,
    );
  }

  _onClickNavigator(BuildContext context, Widget page) async {
    String s = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));

    print(s);
  }

  _onClickOk(BuildContext context, Widget page) {
    print("Clicou no botao2");
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
  }

  _img(String image) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
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

  _onClickSnack() {}

  _onClickDialog() {}

  _onClickToast() {}
}
