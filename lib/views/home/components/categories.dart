import 'package:bag_app/constant.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // ignore: non_constant_identifier_names
  List<String> Cgs = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int selectItem = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Cgs.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectItem = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Cgs[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectItem == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: kDefaultPaddin / 4), //top padding 5
              height: 2,
              width: 50,
              color: selectItem == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
