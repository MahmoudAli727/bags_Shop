import 'package:bag_app/constant.dart';
import 'package:bag_app/model/bag_model.dart';
import 'package:bag_app/views/Details/components/Add_Card.dart';
import 'package:bag_app/views/Details/components/Counter_Fav.dart';
import 'package:bag_app/views/Details/components/bagTitleAndImage.dart';
import 'package:bag_app/views/Details/components/color_size.dart';
import 'package:bag_app/views/Details/components/desc.dart';
import 'package:flutter/material.dart';

class Details_view_Body extends StatelessWidget {
  const Details_view_Body({super.key, required this.bg});
  final bag_model bg;
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: heightScreen * 0.32),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPaddin),
                    topRight: Radius.circular(kDefaultPaddin),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: kDefaultPaddin * 4),
                      ColorAndSize(bg: bg),
                      const SizedBox(height: kDefaultPaddin),
                      const desc(),
                      const SizedBox(height: kDefaultPaddin),
                      const counterAndFav(),
                      const SizedBox(height: kDefaultPaddin),
                      AddCard(bg: bg),
                      const SizedBox(height: kDefaultPaddin * 0.41),
                    ],
                  ),
                ),
              ),
            ),
            bagTitleAndImage(bg: bg),
          ],
        )
      ],
    );
  }
}
