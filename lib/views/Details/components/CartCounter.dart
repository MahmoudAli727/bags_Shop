import 'package:bag_app/constant.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int countitem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (countitem > 1) {
              setState(() {
                countitem--;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: kTextLightColor),
            ),
            child: const Icon(
              Icons.remove,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            countitem.toString().padLeft(2, "0"),
            style: const TextStyle(
              color: kTextColor,
              fontSize: 20,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              countitem++;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: kTextLightColor),
            ),
            child: const Icon(
              Icons.add,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
        )
      ],
    );
  }
}
