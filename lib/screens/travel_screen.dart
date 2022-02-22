import 'package:flutter/material.dart';

class TravelScreen extends StatelessWidget {
  const TravelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/travel.jpg')),
          const TitleTravel(),
          const ButtonSection(),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
                'Error molestiae in ut facilis. Nostrum culpa quo. Sit voluptatem qui aut nihil. Quo molestiae harum et ratione. Illum ducimus et. In sed aliquid illo rem. Aut reprehenderit aliquid similique repellendus ut qui ut et. Enim temporibus omnis quidem inventore. Eum et aliquam voluptas qui aperiam eligendi doloribus rerum molestiae. Necessitatibus modi rem soluta ut aut sit. Dignissimos ducimus sequi eos. Quia quae libero molestias omnis quam sit officia animi. Sed eos qui amet dolore autem. Aut asperiores hic sit dolores maxime ut natus molestias. Perferendis in atque est nulla sit id omnis provident natus.'),
          )
        ],
      ),
    );
  }
}

class TitleTravel extends StatelessWidget {
  const TitleTravel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Sit ut fugit dolor aut enim',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Quo corrupti id asperiores ut eos',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.star, color: Colors.pink),
                Text('45')
              ],
            )
          ],
        ));
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        ButtonAction(icon: Icons.call, text: 'CALL'),
        ButtonAction(icon: Icons.near_me, text: 'ROUTE'),
        ButtonAction(icon: Icons.share, text: 'SHARE'),
      ],
    );
  }
}

class ButtonAction extends StatelessWidget {
  final IconData icon;
  final String text;

  const ButtonAction({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.pink),
        const SizedBox(height: 5),
        Text(text, style: const TextStyle(color: Colors.pink))
      ],
    );
  }
}
