import 'package:flutter/material.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Page2"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Center(
      child: RaisedButton(
        color: Colors.blue,
        child: Text("Voltar"),
        onPressed: () => _onClickVoltar(context),
      ),
    );
  }

  _onClickVoltar(context) {
    Navigator.pop(context, "Tela 2");
  }
}
