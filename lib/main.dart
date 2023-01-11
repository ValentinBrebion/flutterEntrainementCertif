import 'package:projetxxsio/Animaux.dart';
import 'package:projetxxsio/homePage.Dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(title: const Text('SIO APP DELAMORTQUITU')),
        drawer: myDrawer(),
        body: const HomePage(),
      ),
    );
  }
}

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu Build'),
          ),
          ListTile(
            title: const Text('Animaux'),
            onTap: () {
              // gallery
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) {
                  return new GalleryAnimaux();
                },
                fullscreenDialog: true,
              ));
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
