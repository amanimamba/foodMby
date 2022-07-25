import 'package:flutter/material.dart';

import 'Categorie.dart';
import 'Categorie_meal.dart';

class ItemCategorie_ extends StatelessWidget {
  final title;
  final color;
  final idx;
  const ItemCategorie_(
    this.title,
    this.color,
    this.idx,
  );
  void Selectionnavigation(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('categorie-meal',
        arguments: Categorie(id: idx, title: title, colors: color));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Selectionnavigation(context),
        splashColor: Colors.white,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ));
  }
}
