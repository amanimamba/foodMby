import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import 'Model/Categorie_item.dart';
import 'Model/dummny_data.dart';

class categorieScreen extends StatelessWidget {
  const categorieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: myDummy_data
          .map((catdata) =>
              ItemCategorie_(catdata.title, catdata.colors, catdata.id))
          .toList(),
    );
  }
}
