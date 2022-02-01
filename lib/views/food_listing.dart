import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_app_v01/fake_data.dart';
import 'package:food_app_v01/models/category.dart';
import 'package:food_app_v01/models/food.dart';
import 'package:food_app_v01/views/food_item.dart';

class FoodListing extends StatelessWidget {
  Category? category;
  static const String routeName = '/food_listing';
  FoodListing({Key? key, this.category}) : super(key: key);

  List<Food> getListFoodByCategory() {
    List<Food> listFood = FAKE_FOOD
        .where((element) => element.categoryId == category!.id)
        .toList();
    stdout.writeln(listFood);
    return listFood;
  }

  @override
  Widget build(BuildContext context) {
    Map<String, Category>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Category>?;
    category = arguments!['category'];
    Color? _color = category!.color ?? Colors.grey;

    List<Food> listFoodByCategory = getListFoodByCategory();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Listing',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          minimum: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [_color.withOpacity(0.5), _color])),
                child: Center(
                  child: Text(
                    category!.content,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(top: 10),
                child: listFoodByCategory.isNotEmpty
                    ? ListView.builder(
                        itemBuilder: (context, index) {
                          Food food = listFoodByCategory[index];
                          return FoodItem(
                            foodItem: food,
                          );
                        },
                        itemCount: listFoodByCategory.length,
                      )
                    : const Text(
                        'No food found',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black),
                      ),
              ))
            ],
          )),
    );
  }
}
