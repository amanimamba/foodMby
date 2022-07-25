import 'package:flutter/material.dart';
import '../Liste_/meal_item.dart';
import './dummny_data.dart';
import 'Categorie.dart';

class Categorie_meal extends StatelessWidget {
  // const Categorie_meal(this.title);
  static const routeName = 'categorie-meal';

  @override
  Widget build(BuildContext context) {
    final routApp = ModalRoute.of(context)!.settings.arguments as Categorie;
    final title = routApp.title;
    final id = routApp.id;
    print(id);
    final categorieMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    // print(categorieMeal);

    return Scaffold(
      appBar: AppBar(
        title: Text('${title}'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Meal_items(
              id: categorieMeal[index].id,
              img: categorieMeal[index].imageUrl,
              titre: categorieMeal[index].title,
              duration: categorieMeal[index].duration,
              complexity: categorieMeal[index].complexity,
              affordability: categorieMeal[index].affordability);
        }),
        itemCount: categorieMeal.length,
      ),
    );
  }
}
