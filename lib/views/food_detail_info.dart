import 'package:flutter/material.dart';
import 'package:food_app_v01/models/food.dart';

class FoodDetailInfo extends StatelessWidget {
  Food food;
  FoodDetailInfo({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInImage.assetNetwork(
            placeholder: 'assets/images/icon.png', image: food.urlName ?? ''),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Text(
            'Ingredients',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        Expanded(
            child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              String ingredient = food.listIngredient[index];
              return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.pink[200],
                    child: Text(
                      '${index + 1}',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  title: Text(ingredient,
                      style: index % 2 == 0
                          ? const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)
                          : const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)));
            },
            itemCount: food.listIngredient.length,
          ),
        ))
      ],
    );
  }
}
