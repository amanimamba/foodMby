import 'package:flutter/material.dart';

import '../Liste_/Filter_screen.dart';
import '../Model/Categorie_meal.dart';

class Drawer_ extends StatelessWidget {
  // const Drawer_({Key? key}) : super(key: key);
  Widget buildListeMenu(
      BuildContext context, String titre, IconData icon, navMenuPages) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(titre,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          )),
      onTap: () {
        Navigator.of(context).pushNamed(navMenuPages);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).accentColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    child: Image.asset(
                      'img_.jpg',
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  Text(
                    'Ramses',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: Theme.of(context).primaryColor),
                    softWrap: true,
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          buildListeMenu(context, 'Meals', Icons.restaurant, '/'),
          buildListeMenu(
              context, 'Filter', Icons.settings, FiltersScreen.routeName),
        ],
      ),
    );
  }
}
