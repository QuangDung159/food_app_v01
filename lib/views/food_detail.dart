import 'package:flutter/material.dart';
import 'package:food_app_v01/models/food.dart';
import 'package:food_app_v01/views/food_detail_info.dart';

class FoodDetail extends StatelessWidget {
  static String routeName = '/food_detail';
  Food? food;

  // construstor
  FoodDetail({Key? key, this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, Food>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Food>?;
    food = arguments!['food'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          food?.name ?? 'Food detail',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        // minimum: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          child: FoodDetailInfo(food: food!),
        ),
      ),
    );
  }
}
