import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../Menu/Drawer_.dart';

class FiltersScreen extends StatefulWidget {
  // const FiltersScreen({Key? key}) : super(key: key);
  static const routeName = '/filter';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool isGlutenFree = false;
  bool isVegan = false;
  bool isVegetarian = false;
  bool isLactoseFree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filter'),
        ),
        drawer: Drawer_(),
        body: Column(
          children: [
            Container(),
            Expanded(
                child: ListView(
              children: [
                SwitchListTile(
                    value: isGlutenFree,
                    title: Text('Gluten'),
                    onChanged: (newValues) {
                      setState(() {
                        isGlutenFree = newValues;
                      });
                    }),
                // SizedBox(hi),
                Divider(
                  color: Colors.pink,
                  height: 2,
                ),
                SwitchListTile(
                    value: isVegan,
                    title: Text('Vegan'),
                    onChanged: (newValues) {
                      setState(() {
                        isVegan = newValues;
                      });
                    }),
                SwitchListTile(
                    value: isVegetarian,
                    title: Text('Vegetarian'),
                    onChanged: (newValues) {
                      setState(() {
                        isVegetarian = newValues;
                      });
                    }),
                SwitchListTile(
                    value: isLactoseFree,
                    title: Text(' LactoseFree'),
                    onChanged: (newValues) {
                      setState(() {
                        isLactoseFree = newValues;
                      });
                    })
              ],
            ))
          ],
        ));
  }
}

// // ignore: camel_case_types
// class FiltersScreen extends StatefullWidget {
//   // const Filter_screen({Key? key}) : super(key: key);
  

//   @override
//   Widget build(BuildContext context) {
    
//   }
// }


