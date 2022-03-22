import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  
@override
Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping List"),
      ),
      body: Center(
        child: Text(args.name+" with "+ args.price.toString()),
      ),
    );
  }
} 