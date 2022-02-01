import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_app_v01/models/food.dart';
import 'package:food_app_v01/views/food_detail.dart';

class FoodItem extends StatelessWidget {
  Food foodItem;
  FoodItem({Key? key, required this.foodItem}) : super(key: key);

  Widget renderFoodIteminList(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent.withOpacity(0.2),
      onTap: () {
        stdout.writeln('ton');
        Navigator.pushNamed(context, FoodDetail.routeName,
            arguments: {'food': foodItem});
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Center(
                child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/icon.png',
                    image: foodItem.urlName ?? ''),
              ),
            ),
          ),
          Positioned(
              top: 10,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black.withOpacity(0.3)),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.timer,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      '${foodItem.duration.inMinutes} minutes',
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
              )),
          Positioned(
              top: 10,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.pink[300]),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  children: [
                    Text(
                      foodItem.complexity.name,
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 20,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black.withOpacity(0.3)),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  children: [
                    Text(
                      foodItem.name,
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return renderFoodIteminList(context);
  }
}
