import 'package:flutter/widgets.dart';
import 'package:tiktok_clone/widgets/avatar_widget.dart';
import 'package:tiktok_clone/widgets/comment_widget.dart';
import 'package:tiktok_clone/widgets/like_widget.dart';
class SidebarComponent extends StatelessWidget {
  final Map <String, dynamic> item;
  const SidebarComponent({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: 20.0
          ),
          child: AvatarWidget(
            profile : item['profile'],
          )
          ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 20.0
          ),
          child: LikeWidget()
        ),
        CommentWidget()
      ],
    );
  }
}