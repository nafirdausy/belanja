import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final List<Item> items =[
    Item(name: 'Sugar', price: 5000, net: 200, unit: 'g'),
    Item(name: 'Salt', price: 2000, net: 50, unit: 'g'),
    Item(name: 'Milk', price: 4000, net: 3, unit: 'fl.oz'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        )
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}