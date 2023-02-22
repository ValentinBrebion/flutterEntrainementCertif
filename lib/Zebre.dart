import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
    return ListView(children: [
      CarouselSlider(
        items: [
          Container(
            //margin: EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              //borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://media.discordapp.net/attachments/1078025695093076049/1078056120175833139/zebreinfo.jpg?width=878&height=584"),
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
                    "https://media.discordapp.net/attachments/1078025695093076049/1078056279156727828/zebreinfo2.jpg?width=881&height=584"),
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
                    "https://media.discordapp.net/attachments/1078025695093076049/1078056496287449108/zebreinfo3.jpg?width=930&height=583"),
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
                "1.40 m",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("masse :"),
              Text(
                "175 à 300 kg",
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
                "40 - 75 cm",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Famille :"),
              Text(
                "Equus",
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
                "25 à 30 ans (nature)",
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
