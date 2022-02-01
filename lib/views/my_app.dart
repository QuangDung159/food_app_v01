import 'package:flutter/material.dart';
import 'package:food_app_v01/views/category_listing.dart';
import 'package:food_app_v01/views/food_detail.dart';
import 'package:food_app_v01/views/food_listing.dart';

class MyApp extends StatefulWidget {
  String name;
  int age;

  MyApp({Key? key, this.name = '', this.age = 0}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance?.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print(state);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      initialRoute: '/',
      routes: {
        FoodListing.routeName: (context) => FoodListing(),
        CategoryListing.routeName: (contex) => const CategoryListing(),
        FoodDetail.routeName: (context) => FoodDetail()
      },
      theme: ThemeData(
          fontFamily: 'Montserrat',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              bodyText2: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              headline1: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              headline2: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold))),
      home: const CategoryListing(),
    );
  }
}
