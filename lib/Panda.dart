import 'package:flutter/material.dart';

class Panda extends StatelessWidget {
  // this allows us to access the TextField text
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Panda")),
    );
  }
}
