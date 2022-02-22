import 'package:flutter/material.dart';

class ScrollDesing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 0.5],
      colors: [
        Color(0xFF5ff8c5),
        Color(0xFF30bad6),
      ],
    ));

    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [PageHome(), const PageTo()],
        ),
      ),
    );
  }
}

class PageHome extends StatelessWidget {
  final TextStyle textStyle = const TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color(0xff30BAD6),
          height: double.infinity,
          alignment: Alignment.topCenter,
          child: const Image(image: AssetImage('assets/scroll.png')),
        ),
        SafeArea(
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Text(
                '11°',
                style: textStyle,
              ),
              Text('Lunes', style: textStyle),
              Expanded(
                child: Container(),
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                size: 100,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }
}

class PageTo extends StatelessWidget {
  const PageTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Welcome to flutter',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            backgroundColor: const Color.fromARGB(255, 0, 101, 253),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
