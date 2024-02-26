import 'package:flutter/material.dart';
import 'package:mmmm/main_cats_screen.dart';
import 'package:mmmm/model/cat.dart';
import 'package:mmmm/data/allCats.dart';

final cats = listCat.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: catsHomePage(),
    );
  }
}
