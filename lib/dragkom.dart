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
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://imgs.search.brave.com/YiHw4Fe4WDwSajCPqmOZgiRcG8Lt0t-QfhGo5EsadTY/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5F/bkROc1FucmMza0No/NllPRWxiUVBnSGFF/OCZwaWQ9QXBp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            //margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://imgs.search.brave.com/hT2RqPCaaGasnwtCkkDA24tw8Oyf8Ehtm8_SIsoMNcg/rs:fit:713:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5D/eWNvcUtZUWZiLTNf/SHRvNnRyUVlRSGFF/NyZwaWQ9QXBp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            //margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://imgs.search.brave.com/FH2AeOt5ZNregeGUOb04ajYTYGBcqDK7m7q9IoP8ekk/rs:fit:844:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC44/MTBVZWE0d3h0SFln/SkRGckxmWGJ3SGFF/SyZwaWQ9QXBp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        options: CarouselOptions(
          height: 380.0,
          //enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
        ),
      ),
    ]);
  }
}
