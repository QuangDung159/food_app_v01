import 'package:flutter/material.dart';
import 'package:food_app_v01/models/category.dart';
import 'package:food_app_v01/views/food_listing.dart';

class CategoryItem extends StatelessWidget {
  Category categoryItem;

  CategoryItem({Key? key, required this.categoryItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color? _color = categoryItem.color;
    return InkWell(
      splashColor: Colors.transparent.withOpacity(0.8),
      onTap: () {
        Navigator.pushNamed(context, FoodListing.routeName,
            arguments: {'category': categoryItem});
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [_color!.withOpacity(0.5), _color])),
        child: Center(
          child: Text(
            categoryItem.content,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
