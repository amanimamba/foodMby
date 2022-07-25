

import 'package:flutter/material.dart';
import 'package:tuto7/Model/dummny_data.dart';

class Detail_meal extends StatelessWidget {
  static const routeName = 'Detail';
  Widget buildTextSelection(BuildContext context, String text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget BuilderContainer(height, Widget child) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: height,
        width: 300,
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final DetailId = ModalRoute.of(context)!.settings.arguments as String;
    final DetailInfo =
        DUMMY_MEALS.firstWhere((detail) => detail.id == DetailId);

    return Scaffold(
        appBar: AppBar(
          title: Text('Detail Meal'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                DetailInfo.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text(
                DetailInfo.title.toString(),
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            buildTextSelection(context, 'Ingredients'),
            Divider(
              color: Colors.pink,
              height: 1,
            ),
            BuilderContainer(
              90,
              ListView.builder(
                itemBuilder: (context, index) => Card(
                  color: Theme.of(context).accentColor,
                  elevation: 5,
                  child: Text(DetailInfo.ingredients[index]),
                ),
                itemCount: DetailInfo.ingredients.length,
              ),
            ),
            buildTextSelection(context, 'Cook Steps'),
            BuilderContainer(
              150,
              ListView.builder(
                  itemCount: DetailInfo.steps.length,
                  itemBuilder: (conext, index) => Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              child: Text('#${(index + 1)}'),
                            ),
                            title: Text(DetailInfo.steps[index]),
                          ),
                        ],
                      )),
            ),
          ]),
        ));
  }
}
