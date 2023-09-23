import 'package:bag_app/constant.dart';
import 'package:bag_app/model/bag_model.dart';
import 'package:flutter/material.dart';

class bagTitleAndImage extends StatelessWidget {
  const bagTitleAndImage({super.key, required this.bg});
  final bag_model bg;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Aristocratic Hand Bag",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              )),
          Text(
            "${bg.name}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: kDefaultPaddin),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Price",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "\$${bg.price}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25),
                  )
                ],
              ),
              Image.asset(
                bg.imgPath!,
                width: 220,
                height: 220,
              ),
            ],
          )
        ],
      ),
    );
  }
}
