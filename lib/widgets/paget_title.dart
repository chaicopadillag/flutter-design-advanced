import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Classify transaction',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 5),
              Text(
                'Classify this transaction into a particular category',
                style: TextStyle(color: Colors.white),
              ),
            ]),
      ),
    );
  }
}
