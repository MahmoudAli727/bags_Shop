import 'package:bag_app/model/bag_model.dart';
import 'package:bag_app/views/Details/components/Details_view_Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Details_view extends StatelessWidget {
  const Details_view({super.key});
  static String routeName = "/Details";

  @override
  Widget build(BuildContext context) {
    var bgroute = ModalRoute.of(context)!.settings.arguments as bag_model;
    return Scaffold(
      backgroundColor: bgroute.backColor,
      appBar: AppBar(
        backgroundColor: bgroute.backColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              color: Colors.white,
              "assets/icons/cart.svg",
            ),
          ),
        ],
      ),
      body: Details_view_Body(bg: bgroute),
    );
  }
}
