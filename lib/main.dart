import 'package:flutter/material.dart';

import 'Liste_/Detail_meal.dart';
import 'Liste_/Filter_screen.dart';
import 'Model/Categorie_meal.dart';
import 'Tabs_.dart';
import 'categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        // canvasColor: Color.fromARGB(255, 254, 254, 1),
      ),
      home: Tabs_(),
      routes: {
        Categorie_meal.routeName: (ctx) => Categorie_meal(),
        Detail_meal.routeName: (ctx) => Detail_meal(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
    );
  }
}
