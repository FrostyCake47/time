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

  const SongWidget({
    Key? key,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.grey[200]),
        child: Row(
          children: const [
            Text("Image"),
            Column(
              children: [
                Text("Song name"),
                Text("Author name")
              ],
            )
          ],
        ),
      )
    );
  }
}