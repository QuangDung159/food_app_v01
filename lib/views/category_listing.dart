import 'package:flutter/material.dart';
import 'package:food_app_v01/fake_data.dart';
import 'package:food_app_v01/views/category_item.dart';

class CategoryListing extends StatelessWidget {
  static const String routeName = '/CategoryListing';
  const CategoryListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Categories',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView(
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: FAKE_CATEGORY.map((item) {
                return CategoryItem(categoryItem: item);
              }).toList(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 1 / 1)),
        ),
      ),
    );
  }
}
