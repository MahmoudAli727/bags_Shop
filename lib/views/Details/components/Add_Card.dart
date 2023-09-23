import 'package:bag_app/constant.dart';
import 'package:bag_app/model/bag_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key, required this.bg});
  final bag_model bg;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: kTextLightColor)),
          child: SvgPicture.asset(
            "assets/icons/add_to_cart.svg",
            width: 25,
          ),
        ),
        const SizedBox(
          width: kDefaultPaddin,
        ),
        ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: bg.backColor,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                "BUY NOW",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ))
      ],
    );
  }
}
