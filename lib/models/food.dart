import 'dart:math';

class Food {
  int? id;
  String name;
  Duration duration;
  Complexity complexity;
  List<String> listIngredient;
  String? urlName;
  int categoryId;

  Food(
      {required this.name,
      required this.duration,
      this.urlName,
      required this.listIngredient,
      required this.categoryId,
      required this.complexity}) {
    id = Random().nextInt(1000);
  }

  @override
  String toString() {
    return '{"id": "$id", "name": "$name", "duration": "$duration", "complexity": "$complexity", "listIngredient": "$listIngredient", "urlName": "$urlName", "categoryId": "$categoryId"}';
  }
}

enum Complexity { simple, medium, hard }
