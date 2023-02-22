import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DragKom extends StatelessWidget {
  // this allows us to access the TextField text
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Dragon du Komodo')),
      body: PageInfoDragKom(),
    );
  }
}

class PageInfoDragKom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      CarouselSlider(
        items: [
          Container(
            //margin: EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              //borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://media.discordapp.net/attachments/1078025695093076049/1078030323813712012/dragkominfo1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            //margin: EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              //borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://media.discordapp.net/attachments/1078025695093076049/1078030513102672054/dragkominfo2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            //margin: EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              //borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://media.discordapp.net/attachments/1078025695093076049/1078030730967400468/dragkominfo3.jpg"),
                //fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        options: CarouselOptions(
          viewportFraction: 1,
          height: 200.0,
          //enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 20),
      ),
      Card(
        elevation: 10,
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("taille moyenne:"),
              Text(
                "2.59 m",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("masse :"),
              Text(
                "79 à 91 kg",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("nb de dents:"),
              Text(
                "60 dents",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Famille :"),
              Text(
                "Varanidae",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("année de découverte:"),
              Text(
                "1910",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Localisation:"),
              Text(
                "Indonésie",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
          ),
        ]),
      )
    ]);
  }
}
