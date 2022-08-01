import 'package:flutter/widgets.dart';
import 'package:tiktok_clone/widgets/avatar_widget.dart';
import 'package:tiktok_clone/widgets/like_widget.dart';
class SidebarComponent extends StatelessWidget {
  const SidebarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarWidget(),
        LikeWidget(),
      ],
    );
  }
}