import 'package:flutter/material.dart';
import 'package:flutter_desing/widgets/background.dart';
import 'package:flutter_desing/widgets/custom_bottom_navigation.dart';
import 'package:flutter_desing/widgets/dashbaord.dart';
import 'package:flutter_desing/widgets/paget_title.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background(), _HomeBody()],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: const [PageTitle(), Dashboard()],
    ));
  }
}
