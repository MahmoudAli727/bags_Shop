import 'package:bag_app/views/Details/components/CartCounter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class counterAndFav extends StatelessWidget {
  const counterAndFav({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CartCounter(),
        Container(
          padding: const EdgeInsets.all(7),
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        ),
      ],
    );
  }
}
