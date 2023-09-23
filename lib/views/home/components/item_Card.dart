import 'package:bag_app/constant.dart';
import 'package:bag_app/model/bag_model.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.bg, required this.press});

  final bag_model bg;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: bg.backColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${bg.id}",
                child: Image.asset(bg.imgPath!),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              bg.name!,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${bg.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
