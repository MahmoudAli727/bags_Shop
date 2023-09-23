import 'package:bag_app/views/Details/Details_view.dart';
import 'package:bag_app/views/home/Home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bag());
}

class Bag extends StatelessWidget {
  const Bag({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bag',
      debugShowCheckedModeBanner: false,
      initialRoute: Home_view.routeName,
      routes: {
        Home_view.routeName: (context) => const Home_view(),
        Details_view.routeName: (context) => const Details_view()
      },
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
