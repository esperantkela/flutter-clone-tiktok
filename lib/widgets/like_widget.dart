import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LikeWidget extends StatelessWidget {
  const LikeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: null, 
      icon: Icon(Icons.favorite_border_outlined)
    );
  }
}