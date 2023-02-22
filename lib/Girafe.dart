import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Girafe extends StatelessWidget {
  // this allows us to access the TextField text
  //TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("Girafe")),
      body: InfoGirafe(),
    );
  }
}

class InfoGirafe extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView(children: [
      CarouselSlider(
        items: [
          Container(
            //margin: EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              //borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://media.discordapp.net/attachments/1078025695093076049/1078053856652574760/girafeinfo.jpg?width=855&height=583"),
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
                    "https://media.discordapp.net/attachments/1078025695093076049/1078054168696205412/girafeinfo2.jpg?width=1038&height=583"),
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
                    "https://media.discordapp.net/attachments/1078025695093076049/1078054446443020358/girafeinfo3.jpg?width=779&height=583"),
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
                "5.80 m",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("masse :"),
              Text(
                "2000 kg",
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
              Text("taille de sa queue:"),
              Text(
                "70 - 100 cm",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Famille :"),
              Text(
                "giraffidae",
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
              Text("espérance de vie:"),
              Text(
                "10 à 15 ans",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Localisation:"),
              Text(
                "Afrique",
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