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
                    "https://imgs.search.brave.com/2KGj6GKmcCOqUiD6kUY-BC3JX4YCdzF7K0RwYjibt7g/rs:fit:1200:800:1/g:ce/aHR0cHM6Ly9pLm5h/dGdlb2ZlLmNvbS9u/LzQyMjMyOWZlLTIy/ZDEtNDZkZi05Y2Rk/LTg2MjNmODU2NWE0/Ny8zMDY1MS5qcGc_/dz0xMjAw"),
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
                    "https://imgs.search.brave.com/RxuVZELhQk3bhLwJLFbiUi9W2geKv-OtYOKAod5pel0/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly8xLmJw/LmJsb2dzcG90LmNv/bS8tVTZNT2VaWXRw/UUEvVWl5enAyU0ht/eUkvQUFBQUFBQUFZ/VE0vSmRWSkt4X29t/LWcvczE2MDAvQWZy/aWNhbitFbGVwaGFu/dCtXYWxscGFwZXJz/LmpwZw"),
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
                    "https://imgs.search.brave.com/23Chnjk4ENdDvlfhOgjTOvvJq5vx8_WxL-9IuNP_O7I/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9pMS53/cC5jb20vbnlwb3N0/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/c2l0ZXMvMi8yMDE1/LzA1L2VsZXBoYW50/LmpwZz9xdWFsaXR5/PTkwJnN0cmlwPWFs/bCZzc2w9MQ"),
                //fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        options: CarouselOptions(
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
