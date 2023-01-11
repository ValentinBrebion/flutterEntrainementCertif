import 'package:flutter/material.dart';

class Zebre extends StatelessWidget {
  const Zebre({super.key});
  // this allows us to access the TextField text
  //TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Zèbre')),
      body: PageInfoZebre(),
    );
  }
}

class PageInfoZebre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
