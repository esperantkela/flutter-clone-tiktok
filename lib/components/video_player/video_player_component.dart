import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerComponent extends StatefulWidget {
  final String media;
  const VideoPlayerComponent({Key? key,required this.media}) : super(key: key);

  @override
  State<VideoPlayerComponent> createState() => _VideoPlayerComponentState();
}

class _VideoPlayerComponentState extends State<VideoPlayerComponent> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

     _controller = VideoPlayerController.asset(
      widget.media,
        )
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
         _controller.play();
      });

     _controller.setLooping(true);

     
  }
  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
              ? SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              )
              : Container();
  }
}