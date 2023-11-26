// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'song.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
));


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 1;
  List<Song> songs = [
    Song(song: "i adore you", artist: "Nesaroo"),
    Song(song: "Evermore", artist: "Hollow Coves"),
    Song(song: "Won't Even know it", artist: "Avery Lynch"),
  ];

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
                    "$level",
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
                      ),
                      SizedBox(height: 20,),

                      Text(
                        "Favourite",
                        style: TextStyle(
                          color: Colors.grey[200]
                        )
                      ),

                      Column(
                        children: [
                          SongWidget(name: "i adore you", artist: "Nesaroo", imageUrl: "https://i.scdn.co/image/ab67616d00001e026b8a7a6490a995ad4b17b133"),
                          SongWidget(name: "Evermore", artist: "Hollow Coves", imageUrl: "https://i.scdn.co/image/ab67616d00001e0288fc5da00cc67a2a4b035618"),
                          SongWidget(name: "Won't even know it", artist: "Avery lynch", imageUrl: "https://i.scdn.co/image/ab67616d00001e02bcb83621f70f176f161295d4"),
                        ]
                      )
                    ],
                  ),
                ),
              ]
            ),
          ),
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              level += 1;
            });
          },
          child: Icon(Icons.add,)
        )
    );
  }
}