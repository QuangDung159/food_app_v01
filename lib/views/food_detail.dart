import 'package:flutter/material.dart';
import 'package:food_app_v01/models/food.dart';

class FoodDetail extends StatelessWidget {
  static String routeName = '/food_detail';
  Food? food;

  // construstor
  FoodDetail({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, Food>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Food>?;
    food = arguments!['food'];

    return Container();
  }
}
