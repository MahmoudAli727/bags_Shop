// ignore: camel_case_types
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class bag_model {
  final String? name, desc, price, size, imgPath, id;
  final Color? backColor;

  bag_model({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.size,
    this.backColor,
    this.imgPath,
  });
}

final bg_mod_1 = bag_model(
  id: "1",
  name: "Office Code",
  price: "234",
  desc: "Aristocratrc Hand Bag",
  backColor: const Color(0xFF3D82AE),
  size: "12",
  imgPath: "assets/images/bag_1.png",
);

final bg_mod_2 = bag_model(
  id: "2",
  name: "Seit Bag",
  price: "234",
  desc: "Aristocratrc Hand Bag",
  backColor: const Color(0xFFD3A984),
  size: "12",
  imgPath: "assets/images/bag_2.png",
);

final bg_mod_3 = bag_model(
  id: "3",
  name: "Hang Tag",
  price: "234",
  desc: "Aristocratrc Hand Bag",
  backColor: const Color(0xFF989493),
  size: "12",
  imgPath: "assets/images/bag_3.png",
);

final bg_mod_4 = bag_model(
  id: "4",
  name: "Old Fashion",
  price: "234",
  desc: "Aristocratrc Hand Bag",
  backColor: const Color(0xFFE6B398),
  size: "12",
  imgPath: "assets/images/bag_4.png",
);

final bg_mod_5 = bag_model(
  id: "5",
  name: "Old bag",
  price: "234",
  desc: "Aristocratrc Hand Bag",
  backColor: const Color(0xFFFB7883),
  size: "12",
  imgPath: "assets/images/bag_5.png",
);

final bg_mod_6 = bag_model(
  id: "6",
  name: "bag Old",
  price: "234",
  desc: "Aristocratrc Hand Bag",
  backColor: const Color(0xFFAEAEAE),
  size: "12",
  imgPath: "assets/images/bag_6.png",
);

final List<bag_model> bgs = [
  bg_mod_1,
  bg_mod_2,
  bg_mod_3,
  bg_mod_4,
  bg_mod_5,
  bg_mod_6,
];
