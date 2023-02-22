import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'SecondRoute.dart';

class HomePage extends StatelessWidget {
  const HomePage({ super.key });


  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [Padding(
      padding:EdgeInsets.only(top:20),
      child: CarouselSlider(
  options: CarouselOptions(height: 300.0),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  ),
  onPressed: () { 
    Navigator.of(context).push(
   
    MaterialPageRoute(builder: (context) =>  SecondRoute(text:"TUTLE")),
  );
  },
  child: Text('Tutle'), 
),
          
        );
      },
    );
  }).toList(),
),
    ),
    
Padding(
    padding: EdgeInsets.only(top:20),
     child: Text("Animal de la semaine :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, decoration: TextDecoration.underline)),
),
    Card(
      margin:EdgeInsets.only(top:20),
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: SizedBox(
          width: 300,
          height: 100,
          child:  Image.network("https://media.discordapp.net/attachments/1078025695093076049/1078031346301145088/tutle.jpg?width=776&height=584",fit: BoxFit.cover,)),

        ),
        
        //GridView.count(
 // primary: false,
  //padding: const EdgeInsets.all(20),
  //crossAxisSpacing: 10,
  //mainAxisSpacing: 10,
  //crossAxisCount: 2,
  //children: <Widget>[
   
   // Container(
      //padding: const EdgeInsets.all(8),
      //color: Colors.teal[100],
      //child: const Text("He'd have you all unravel at the"),
    //),
   /// Container(
      //padding: const EdgeInsets.all(8),
     // color: Colors.teal[200],
     // child: const Text('Heed not the rabble'),
  //  ),
    //Container(
      //padding: const EdgeInsets.all(8),
     // color: Colors.teal[300],
    //  child: const Text('Sound of screams but the'),
   // ),
   // Container(
     // padding: const EdgeInsets.all(8),
      //color: Colors.teal[400],
    // child: const Text('Who scream'),
   // ),
  //  Container(
     // padding: const EdgeInsets.all(8),
     // color: Colors.teal[500],
     // child: const Text('Revolution is coming...'),
   // ),
   // Container(
      //padding: const EdgeInsets.all(8),
    //  color: Colors.teal[600],
     // child: const Text('Revolution, they...'),
   // ),
//  ],
       // ),
      ],     
);
        
      

    
  }
}