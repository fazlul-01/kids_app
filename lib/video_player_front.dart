
import 'package:flutter/material.dart';
import 'package:kids_app/video_player.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Video Player'),
//      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue,Colors.green]
            )
        ),
        child: ListView(
          children: <Widget>[
            VideoListItem(
              videoPlayerController: VideoPlayerController.asset('assets/videos/kids.mp4'),
              looping: true,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'English Alphabet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'The English alphabet has 26 letters. In "alphabetical order", they are:\n a b c d e f g h i j k l m n o p q r s t u v w x y z\n\nFive of the letters are vowels:\n a e i o u\n\nThe remaining twenty-one letters are "consonants".\n',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),)

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
