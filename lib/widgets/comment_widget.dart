import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommentWidget extends StatelessWidget {
  final int count ;
  const CommentWidget({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8.0,
          ),
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.1)
                ),
                child:  Center(
                  child: IconButton(
                    onPressed: (){} ,
                    icon: const Icon(Icons.comment_rounded),
                    color: Colors.white,
                    iconSize: 25.0,
                    ),
                ),
              ),
            ),
          ),
        ),
        Text(
          count.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: .8
          ),
          
        ),
      ],
    );
  }
}