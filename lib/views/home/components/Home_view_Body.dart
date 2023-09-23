import 'package:bag_app/constant.dart';
import 'package:bag_app/model/bag_model.dart';
import 'package:bag_app/views/Details/Details_view.dart';
import 'package:bag_app/views/home/components/categories.dart';
import 'package:bag_app/views/home/components/item_Card.dart';
import 'package:flutter/material.dart';

class Hoem_view_Body extends StatelessWidget {
  const Hoem_view_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: kDefaultPaddin),
        const Categories(),
        const SizedBox(height: kDefaultPaddin),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: bgs.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                  bg: bgs[index],
                  press: () {
                    Navigator.pushNamed(context, Details_view.routeName,
                        arguments: bgs[index]);
                  }),
            ),
          ),
        ),
      ],
    );
  }
}
