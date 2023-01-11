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
                            "https://imgs.search.brave.com/Y1TA7Db_KHZWgCL8NTgpoACaJZmOvFmmtygMXqe7BEU/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9pbWFn/ZXM0LmFscGhhY29k/ZXJzLmNvbS8xMDkv/MTA5MTYzNi5qcGc",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
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
                            "https://imgs.search.brave.com/YWacBz_GRXgla_heDGaDyZ1GU2lipReN-Pc8HZPIqXg/rs:fit:1200:1200:1/g:ce/aHR0cDovL215c3Rp/Yy1kcmVhbXMubS55/LnBpYy5jZW50ZXJi/bG9nLm5ldC9vL2Q0/MTRjMGYwLmpwZw",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
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
                            "https://2.bp.blogspot.com/-6f2mFXyrboo/VxFcz4Oh_oI/AAAAAAAAFYM/nhU-r8eVcVQgTj0aZVrjtM4TV8CidqjVgCKgB/s1600/Elephant-Animal-HD-Wallpapers.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
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
                            "https://imgs.search.brave.com/KnLJ94QUZaxfwVoZVev8dIcOPHwoP6DVnkidNCvPy_A/rs:fit:1200:847:1/g:ce/aHR0cHM6Ly9hbmlt/YWxheHkuZnIvd3At/Y29udGVudC91cGxv/YWRzLzIwMTcvMDkv/cmVkLXBhbmRhLTk4/MTIzMV8xMjgwLmpw/Zw",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
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
                            "https://imgs.search.brave.com/rDdjy0M2FjCz8rTxxME1H0Rkra4_ZtSvlreNFsRMjpg/rs:fit:1200:1080:1/g:ce/aHR0cHM6Ly9pbWFn/ZXMzLmFscGhhY29k/ZXJzLmNvbS81ODgv/dGh1bWItMTkyMC01/ODg5MDkuanBn",
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
                            "https://imgs.search.brave.com/DnN5u6X04VFqhpEP1jH9EtvdL49SMVLfxmv5io_RSig/rs:fit:1200:675:1/g:ce/aHR0cHM6Ly9kYWls/eWdlZWtzaG93LmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MC8wOS91bmUtZHJh/Z29uLWtvbW9kby5q/cGVn",
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
