import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Elephant extends StatelessWidget {
  // this allows us to access the TextField text
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Elephant')),
      body: PageInfoElephant(),
    );
  }
}

class PageInfoElephant extends StatelessWidget {
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
                    "https://media.discordapp.net/attachments/1078025695093076049/1078027619158728886/Capture_decran_2023-02-22_195637.jpg?width=881&height=584"),
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
                    "https://media.discordapp.net/attachments/1078025695093076049/1078027287171182743/Capture_decran_2023-02-22_195515.jpg?width=778&height=584"),
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
                    "https://media.discordapp.net/attachments/1078025695093076049/1078026473035808828/Capture_decran_2023-02-22_195126.jpg?width=880&height=584"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        options: CarouselOptions(
          height: 300.0,
          viewportFraction: 1,
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
                "3.50 m",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("masse :"),
              Text(
                "7 tonnes",
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
              Text("vie en moyenne:"),
              Text(
                "60 ans",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Famille :"),
              Text(
                "Elephantidae",
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
                "500 millions ",
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
