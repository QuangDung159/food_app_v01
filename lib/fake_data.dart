import 'package:flutter/material.dart';
import 'package:food_app_v01/models/category.dart';
import 'package:food_app_v01/models/food.dart';

List<Category> FAKE_CATEGORY = [
  Category(id: 1, content: 'Đồ Nhật', color: Colors.pink),
  Category(id: 2, content: 'Đồ Hàn', color: Colors.green),
  Category(id: 3, content: 'Đồ Tây', color: Colors.grey),
  Category(id: 4, content: 'Đồ Mỹ Tho', color: Colors.teal),
  Category(id: 5, content: 'Đồ 1234', color: Colors.red),
  Category(id: 6, content: 'Đồ Nhật', color: Colors.pink),
  Category(id: 7, content: 'Đồ Hàn', color: Colors.green),
  Category(id: 8, content: 'Đồ Tây', color: Colors.grey),
  Category(id: 9, content: 'Đồ Mỹ Tho', color: Colors.teal),
  Category(id: 10, content: 'Đồ 1234', color: Colors.red),
  Category(id: 11, content: 'Đồ Nhật', color: Colors.pink),
  Category(id: 12, content: 'Đồ Hàn', color: Colors.green),
  Category(id: 13, content: 'Đồ Tây', color: Colors.grey),
  Category(id: 14, content: 'Đồ Mỹ Tho', color: Colors.teal),
  Category(id: 15, content: 'Đồ 1234', color: Colors.red),
];

List<Food> FAKE_FOOD = [
  Food(
      name: 'Món 1',
      duration: const Duration(minutes: 12),
      listIngredient: ['Trứng', 'sữa', 'Đậu hủ thúi'],
      categoryId: 1,
      complexity: Complexity.simple,
      urlName:
          'https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.6435-9/83167375_2626073120839225_7822897013967552512_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0debeb&_nc_ohc=hMi4T8zL20wAX9kwcWY&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT99DzkbFIrU6Lgbemihpfi8li4Z9LYD0koaWkeTam-Yyw&oe=621F1D37'),
  Food(
      name: 'Món 11',
      duration: const Duration(minutes: 12),
      listIngredient: ['Trứng', 'sữa'],
      categoryId: 1,
      complexity: Complexity.simple,
      urlName:
          'https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.6435-9/83167375_2626073120839225_7822897013967552512_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0debeb&_nc_ohc=hMi4T8zL20wAX9kwcWY&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT99DzkbFIrU6Lgbemihpfi8li4Z9LYD0koaWkeTam-Yyw&oe=621F1D37'),
  Food(
      name: 'Món 2',
      duration: const Duration(minutes: 12),
      listIngredient: ['Trứng', 'sữa'],
      categoryId: 1,
      complexity: Complexity.simple,
      urlName:
          'https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.6435-9/83167375_2626073120839225_7822897013967552512_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0debeb&_nc_ohc=hMi4T8zL20wAX9kwcWY&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT99DzkbFIrU6Lgbemihpfi8li4Z9LYD0koaWkeTam-Yyw&oe=621F1D37'),
  Food(
      name: 'Món 3',
      duration: const Duration(minutes: 12),
      listIngredient: ['Trứng', 'sữa'],
      categoryId: 1,
      complexity: Complexity.simple,
      urlName:
          'https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.6435-9/83167375_2626073120839225_7822897013967552512_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0debeb&_nc_ohc=hMi4T8zL20wAX9kwcWY&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT99DzkbFIrU6Lgbemihpfi8li4Z9LYD0koaWkeTam-Yyw&oe=621F1D37'),
  Food(
      name: 'Món 4',
      duration: const Duration(minutes: 12),
      listIngredient: ['Trứng', 'sữa'],
      categoryId: 2,
      complexity: Complexity.simple,
      urlName:
          'https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.6435-9/83167375_2626073120839225_7822897013967552512_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0debeb&_nc_ohc=hMi4T8zL20wAX9kwcWY&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT99DzkbFIrU6Lgbemihpfi8li4Z9LYD0koaWkeTam-Yyw&oe=621F1D37'),
  Food(
      name: 'Món 5',
      duration: const Duration(minutes: 12),
      listIngredient: ['Trứng', 'sữa'],
      categoryId: 2,
      complexity: Complexity.simple,
      urlName:
          'https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.6435-9/83167375_2626073120839225_7822897013967552512_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0debeb&_nc_ohc=hMi4T8zL20wAX9kwcWY&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT99DzkbFIrU6Lgbemihpfi8li4Z9LYD0koaWkeTam-Yyw&oe=621F1D37'),
  Food(
      name: 'Món 6',
      duration: const Duration(minutes: 12),
      listIngredient: ['Trứng', 'sữa'],
      categoryId: 3,
      complexity: Complexity.simple,
      urlName:
          'https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.6435-9/83167375_2626073120839225_7822897013967552512_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0debeb&_nc_ohc=hMi4T8zL20wAX9kwcWY&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT99DzkbFIrU6Lgbemihpfi8li4Z9LYD0koaWkeTam-Yyw&oe=621F1D37'),
  Food(
      name: 'Món 7',
      duration: const Duration(minutes: 12),
      listIngredient: ['Trứng', 'sữa'],
      categoryId: 1,
      complexity: Complexity.simple,
      urlName:
          'https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.6435-9/83167375_2626073120839225_7822897013967552512_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0debeb&_nc_ohc=hMi4T8zL20wAX9kwcWY&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT99DzkbFIrU6Lgbemihpfi8li4Z9LYD0koaWkeTam-Yyw&oe=621F1D37'),
  Food(
      name: 'Món 8',
      duration: const Duration(minutes: 12),
      listIngredient: ['Trứng', 'sữa'],
      categoryId: 4,
      complexity: Complexity.simple,
      urlName:
          'https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.6435-9/83167375_2626073120839225_7822897013967552512_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0debeb&_nc_ohc=hMi4T8zL20wAX9kwcWY&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT99DzkbFIrU6Lgbemihpfi8li4Z9LYD0koaWkeTam-Yyw&oe=621F1D37'),
  Food(
      name: 'Món 9',
      duration: const Duration(minutes: 12),
      listIngredient: ['Trứng', 'sữa'],
      categoryId: 1,
      complexity: Complexity.simple,
      urlName:
          'https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.6435-9/83167375_2626073120839225_7822897013967552512_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0debeb&_nc_ohc=hMi4T8zL20wAX9kwcWY&_nc_ht=scontent.fsgn3-1.fna&oh=00_AT99DzkbFIrU6Lgbemihpfi8li4Z9LYD0koaWkeTam-Yyw&oe=621F1D37'),
];
