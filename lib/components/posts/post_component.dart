import 'package:flutter/widgets.dart';
import 'package:tiktok_clone/components/video_player/video_player_component.dart';

class PostComponent extends StatelessWidget {
  final Map<String, dynamic> item;
  const PostComponent({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VideoPlayerComponent(media: item['media']);
  }
}