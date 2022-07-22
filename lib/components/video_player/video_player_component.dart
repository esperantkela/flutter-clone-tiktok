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
    return Stack(
      children: [
        _controller.value.isInitialized
              ? SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              )
              : Container(),
        Positioned(
          bottom: 100.0,
          left: 20.0,
          right: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => print('see profile'),
                child: const Padding(
                  padding:EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "@Username",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => print('Show more'),
                child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.0,
                    height: 1.5,
                  ),
                  maxLines: 2,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}