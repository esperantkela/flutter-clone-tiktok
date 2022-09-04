import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LikeWidget extends StatelessWidget {
  const LikeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        height: 40.0,
        width: 40.0,
        color: Colors.red,
        child: const Center(
          child: Text(
            "1.5k",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0
            ),
          ),
        ),
      ),
    );
  }
}