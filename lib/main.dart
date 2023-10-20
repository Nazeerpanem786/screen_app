  //ASSIGNMENT FOR SCREEN DISPLAY

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  bool _ButtonSection = false;

  @override
  Widget build(BuildContext context) {

   Widget ButtonSection = Container(
     child: Row(
       children: [
         Column(
           children: [
             SizedBox(height: 10),
               _buildIconSection(Colors.black,Icons.calendar_month_outlined,'October 30'),

             SizedBox(height: 10),
             _buildIconSection(Colors.black,Icons.business,'San Fransisco'),
           ],
         ),
       ],
     ),
   );

   SizedBox(height: 10,
    child: ElevatedButton(onPressed: (){

    }, child: Text('RSVP'),
    ),);


   var fieldSection = SizedBox(
     child: TextFormField(
       decoration: InputDecoration(),
     ),
   ),




    titleSection = Container(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 8),
                 child: Text("What we'll be doing",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Roboto',fontSize: 25,color: Colors.black87),
                ),
              ),
              SizedBox(height: 10),
              Text("Join us for a day full of Firebase Workshops and Pizza!",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Gorgia'),
              ),
            ],
          ),
        ],
      ),
    );

   final leftColumn = Container(
     child: Column(
       children: [
         titleSection,
         ButtonSection,
         fieldSection
       ],
     ),
   );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firebase Meetup',style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigoAccent,
        ),
        body: ListView(
          children: [
            Image.asset('images/firebasemeetup.jpg',height: 250,width: 600,fit: BoxFit.cover),
            ButtonSection,
            fieldSection,
            titleSection
          ],
        ),
      ),
    );
  }




  Column _buildIconSection(Color color,IconData icon,String label) {
    return Column(
      children: [
        Icon(icon, color: color),
        Container(
        margin: EdgeInsets.only(top: 8),
         child: Text(
             label,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: color),
        ),
        ),
      ],
    );
  }
}



