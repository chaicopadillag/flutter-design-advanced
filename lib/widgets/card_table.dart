import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;

  const CardTable(
      {Key? key, required this.icon, required this.color, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: _BoxCard(color: color, icon: icon, title: title),
        ),
      ),
    );
  }
}

class _BoxCard extends StatelessWidget {
  const _BoxCard({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}
