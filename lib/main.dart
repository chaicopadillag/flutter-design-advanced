import 'package:flutter/material.dart';
import 'package:flutter_desing/screens/dashboard_screen.dart';
import 'package:flutter_desing/screens/scroll_desing.dart';
import 'package:flutter_desing/screens/travel_screen.dart';

void main() => runApp(FlutterDesing());

class FlutterDesing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'dashboard',
      routes: {
        'default': (_) => const TravelScreen(),
        'scroll': (_) => ScrollDesing(),
        'dashboard': (_) => const DashboardScreen(),
      },
    );
  }
}
