import 'package:flutter/material.dart';
import 'package:mmmm/model/cat.dart';
import 'package:mmmm/details_screen.dart';

class catCard extends StatelessWidget {
  final Cat cat;

  const catCard({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return catsdetail(cat: cat);
        }));
      },
      child: Card(
        child: Column(
          children: [
            Expanded(
                child: Image.network(
                    width: double.infinity, fit: BoxFit.cover, cat.imageLink)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cat.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.deepPurple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
