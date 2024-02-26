import 'package:flutter/material.dart';
import 'package:mmmm/model/cat.dart';
import 'package:mmmm/widget/cardDetails.dart';
import 'package:mmmm/main.dart';

class catsdetail extends StatelessWidget {
  final Cat cat;

  const catsdetail({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(cat.name),
        backgroundColor: Colors.purple,
      ),
      body: cardDetails(
        cat: cat,
      ),
    );
  }
}
