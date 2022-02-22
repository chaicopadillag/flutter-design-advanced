import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8],
            colors: [
              Color.fromARGB(255, 12, 41, 102),
              Color.fromARGB(255, 8, 21, 48),
            ],
          )),
        ),
        Positioned(top: -80, left: -10, child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(60)),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.2, 0.8],
        colors: [
          Colors.pink,
          Colors.pinkAccent,
        ],
      ),
    );
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 300,
        height: 300,
        decoration: boxDecoration,
      ),
    );
  }
}
