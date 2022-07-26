

import 'package:flutter/material.dart';

class ProfileComponent extends StatelessWidget {
  const ProfileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          );
  }
}