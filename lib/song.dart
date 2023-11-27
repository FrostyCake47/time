// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Song{
  String song;
  String artist;

  Song({required this.song, required this.artist});
}


class SongWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String artist;

  @override
  const SongWidget({
    Key? key,
    required this.name,
    required this.artist,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(8.0, 16, 16, 0),
      color: Colors.grey[850],
      elevation: 0.0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.grey[200],
            letterSpacing: 0.3,
          ),
        
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  imageUrl,
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
              ),
        
              SizedBox(width: 10,),
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(
                    artist,
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),)
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}