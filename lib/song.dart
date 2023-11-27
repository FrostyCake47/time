// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


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
      margin: EdgeInsets.all(8.0),
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
      )
    );
  }
}