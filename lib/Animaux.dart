import 'package:flutter/material.dart';
import 'package:projetxxsio/dragkom.dart';

import 'Elephant.dart';
import 'Girafe.dart';
import 'PandRoux.dart';
import 'Panda.dart';
import 'Zebre.dart';

class GalleryAnimaux extends StatelessWidget {
  // this allows us to access the TextField text
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Galerie Photo')),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Zebre()));
                      },
                      child: Card(
                        margin: EdgeInsets.only(top: 20),
                        elevation: 0,

                        //padding: const EdgeInsets.all(8),
                        //color: Colors.green[100],
                        child: SizedBox(
                          width: 300,
                          height: 100,
                          child: Image.network(
                            "https://media.discordapp.net/attachments/1078025695093076049/1078028044809277490/zebre_present.jpg?width=621&height=584",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 10,
                      child: Text(
                        "Zèbre",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Girafe()));
                      },
                      child: Card(
                        margin: EdgeInsets.only(top: 20),
                        elevation: 0,

                        //padding: const EdgeInsets.all(8),
                        //color: Colors.green[100],
                        child: SizedBox(
                          width: 300,
                          height: 100,
                          child: Image.network(
                            "https://media.discordapp.net/attachments/1078025695093076049/1078028295792234566/girafepresent.jpg?width=775&height=584",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 10,
                      child: Text(
                        "Girafe",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Elephant()));
                      },
                      child: Card(
                        margin: EdgeInsets.only(top: 20),
                        elevation: 0,

                        //padding: const EdgeInsets.all(8),
                        //color: Colors.green[100],
                        child: SizedBox(
                          width: 300,
                          height: 100,
                          child: Image.network(
                            "https://media.discordapp.net/attachments/1078025695093076049/1078028588399480902/elephtantpresent.jpg?width=936&height=583",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 10,
                      child: Text(
                        "Elephant",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PandRoux()));
                      },
                      child: Card(
                        margin: EdgeInsets.only(top: 20),
                        elevation: 0,

                        //padding: const EdgeInsets.all(8),
                        //color: Colors.green[100],
                        child: SizedBox(
                          width: 300,
                          height: 100,
                          child: Image.network(
                            "https://media.discordapp.net/attachments/1078025695093076049/1078029211157147759/pandarouxpresent.jpg?width=893&height=584",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 10,
                      child: Text(
                        "Panda Roux",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: <Widget>[
                    InkWell(
                      //inkwell rendre n'importe quelle objet cliquable
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Panda()));
                      },
                      child: Card(
                        margin: EdgeInsets.only(top: 20),
                        elevation: 0,

                        //padding: const EdgeInsets.all(8),
                        //color: Colors.green[100],
                        child: SizedBox(
                          width: 300,
                          height: 100,
                          child: Image.network(
                            "https://media.discordapp.net/attachments/1078025695093076049/1078029436886192159/pandapresent.jpg?width=1054&height=583",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      child: Text(
                        "Panda",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => DragKom()));
                      },
                      child: Card(
                        margin: EdgeInsets.only(top: 20),
                        //elevation: 0,
                        /*shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),*/

                        //padding: const EdgeInsets.all(8),
                        //color: Colors.green[100],
                        child: SizedBox(
                          width: 300,
                          height: 100,
                          child: Image.network(
                            "https://media.discordapp.net/attachments/1078025695093076049/1078029681741275156/dragkompresent.jpg?width=1040&height=584",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      child: Text(
                        "Dragon du komodo",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
