import 'package:flutter/material.dart';

import 'circle_with_icon_clipper.dart';

class CircleShape extends StatelessWidget {
  const CircleShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
          clipper: CircleWithIconClipper(),
          child: const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
                'assets/image/aloneTree.jpeg'),
          ),
        ),

      ],
    );
  }
}
