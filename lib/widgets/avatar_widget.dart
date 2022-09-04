import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class AvatarWidget extends StatelessWidget {
   final Map<String, dynamic> profile;
  const AvatarWidget({Key? key, required this.profile}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: GestureDetector(
          onTap: () => print('See profile'),
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: Colors.white
              )
            ),
            child: CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage(
              profile['avatar']
            )
          )
          ),
              ),
        ),
      GestureDetector(
        onTap: () => print('add profile'),
        child: CircleAvatar(
          radius: 15.0,
          backgroundColor: Colors.pink,
          child: Icon(
            Icons.add,
            size: 20.0,
          ),
        ),
      ),
      ],
    );
  }
}