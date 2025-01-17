import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoListItem extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;

  VideoListItem({
    @required this.videoPlayerController,
    this.looping,
    Key key,
  }) : super(key: key);

  @override
  _VideoListItemState createState() => _VideoListItemState();
}

class _VideoListItemState extends State<VideoListItem> {

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      looping: widget.looping,
      //display the error incase it occurs
      errorBuilder: (context, errorMessage){
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          )
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Chewie(
      controller: _chewieController,

    );
  }

  @override
  void dispose(){
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }

}

