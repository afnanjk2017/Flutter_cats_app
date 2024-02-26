import 'package:flutter/material.dart';
import 'package:mmmm/widget/catCard.dart';
import 'package:mmmm/main.dart';

class catsHomePage extends StatelessWidget {
  const catsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text("my cats"),
          backgroundColor: Colors.purple,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite, color: Colors.white)),
          ],
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: cats.length,
          itemBuilder: (context, index) {
            final cat = cats[index];
            return catCard(cat: cat);
          },
        ));
  }
}
