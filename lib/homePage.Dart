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
    ),Card(
      margin:EdgeInsets.only(top:20),
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: SizedBox(
          width: 300,
          height: 100,
          child:  Image.network("https://imgs.search.brave.com/y18UdzLEmkXV81x9_K1GPGcFLngHl3LR57P6o-qN8KE/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wcmV2/aWV3LnJlZGQuaXQv/Mmx2dG80NDBqdXcy/MS5qcGc_YXV0bz13/ZWJwJnM9MmRiOTQx/OGNkODgwY2Q3YzVj/OGI1YjEwYWM5ZDQy/MTg0NDQxMTQ4NQ",fit: BoxFit.cover,)),

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