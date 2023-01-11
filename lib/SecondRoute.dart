import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  final String text;

  const SecondRoute({required this.text});
  @override
  _SecondRoute createState() {
    return _SecondRoute();
  }
}

class _SecondRoute extends State<SecondRoute> {
  // this allows us to access the TextField text
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.text)),
    );
  }
}
