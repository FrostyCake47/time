// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
));


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Colors.grey[900],

        appBar: AppBar(
          title: Text(
            "Frosty Card",
            style: TextStyle(
              color: Colors.grey[350],
            ),),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),

        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),//or 15.0
                    child: Container(
                      height: 70.0,
                      width: 70.0,
                      child: Image(image: AssetImage("assets/PaperPlanes1.jpg")),
                    ),
                  ),
                  SizedBox(height: 10,),
              
                  Text(
                    "NAME",
                    style: TextStyle(
                      color: Colors.grey[200]
                    )
                  ),
                  //SizedBox(height: 5,),
                  Text(
                    "Akash",
                    style: TextStyle(
                      color: Colors.amber,
                      fontFamily: "Pacifico",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              
                  SizedBox(height: 10,),
                  Text(
                    "Current Level",
                    style: TextStyle(
                      color: Colors.grey[200]
                    )
                  ),
                  //SizedBox(height: 10,),
                  Text(
                    "69",
                    style: TextStyle(
                      color: Colors.amber,
                      fontFamily: "Pacifico",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  ],
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.grey[200],
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Awesomeakash47@gmail.com",
                            style: TextStyle(
                              color: Colors.grey[200]
                            )
                          ),
                        ],
                      ),
                  
                      SizedBox(height: 10,),
                      
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.grey[200],
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "9746796942",
                            style: TextStyle(
                              color: Colors.grey[200]
                            )
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]
            ),
          ),
        ),

      
    );
  }
}