import 'package:flutter/material.dart';

class CustomProfilePhoto extends StatelessWidget {

  final String imageUrl;

  const CustomProfilePhoto({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 105,
          backgroundImage: NetworkImage(imageUrl),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Color(0xFF1FC55E),
            child: Icon(
              Icons.camera_alt_outlined,
              size: 32,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}