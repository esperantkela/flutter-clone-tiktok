import 'package:flutter/widgets.dart';
import 'package:tiktok_clone/components/posts/profile/profile_component.dart';
import 'package:tiktok_clone/components/sidebar/sidebar_component.dart';
import 'package:tiktok_clone/components/video_player/video_player_component.dart';

class PostComponent extends StatelessWidget {
  final Map<String, dynamic> item;
  const PostComponent({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoPlayerComponent(media: item['media']),
         Positioned(
          bottom: 100.0,
          left: 20.0,
          right: 100.0,
          child: ProfileComponent(
            item: item,
          )
          ),
          Positioned(
            bottom : 100.0,
            right : 40.0,
            child: SidebarComponent(),
          ),
      ],
    );
  }
}