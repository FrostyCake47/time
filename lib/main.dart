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
      
        /*body: Center(
                child: Image.asset("assets/1.jpg"),
                //child: Image.network("https://sallysbakingaddiction.com/wp-content/uploads/2017/06/moist-chocolate-cupcakes-5.jpg")
        ),*/

        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Image(image: AssetImage("assets/PaperPlanes1.jpg")),
                  
                ),

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
                )
                
              ],
            ),
          ),
        ),

      
    );
  }
}