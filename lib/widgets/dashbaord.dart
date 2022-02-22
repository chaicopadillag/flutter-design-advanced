import 'package:flutter/material.dart';
import 'package:flutter_desing/widgets/card_table.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            CardTable(
                color: Colors.blue, title: 'General', icon: Icons.dashboard),
            CardTable(
                color: Colors.purple,
                title: 'Transport',
                icon: Icons.directions_car),
          ],
        ),
        TableRow(
          children: [
            CardTable(color: Colors.green, title: 'Food', icon: Icons.fastfood),
            CardTable(
                color: Colors.orange,
                title: 'Health',
                icon: Icons.local_hospital),
          ],
        ),
        TableRow(
          children: [
            CardTable(
                color: Colors.red,
                title: 'Entertainment',
                icon: Icons.local_movies),
            CardTable(
                color: Colors.pink, title: 'Travel', icon: Icons.local_airport),
          ],
        ),
        TableRow(
          children: [
            CardTable(
                color: Colors.teal, title: 'Shopping', icon: Icons.local_mall),
            CardTable(
                color: Colors.indigo, title: 'Bills', icon: Icons.payment),
          ],
        ),
      ],
    );
  }
}
