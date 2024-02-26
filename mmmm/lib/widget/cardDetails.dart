import 'package:flutter/material.dart';
import 'package:mmmm/model/cat.dart';

class cardDetails extends StatelessWidget {
  final Cat cat;

  const cardDetails({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(cat.imageLink),
        Text(
          cat.name,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text('origin :  ${cat.origin}'),
        Text('maxWeight :  ${cat.maxWeight}'),
        Text('minWeight:  ${cat.minWeight}'),
        Text('length:  ${cat.length}'),
      ],
    );
  }
}
