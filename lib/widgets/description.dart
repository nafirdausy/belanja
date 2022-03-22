import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class description extends StatelessWidget {
  const description({
    Key? key,
    required this.args,
  }) : super(key: key);

  final Item args;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Item Description', 
          style: TextStyle(
            letterSpacing: 2,
            wordSpacing: 3,
            height: 2,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent
          ),
        ),
        SizedBox(
          width: 200.0,
          height: 30.0,
          child: Card(child: Text(' Name : '+args.name,style: TextStyle(fontSize: 15))
          ),
        ),
        SizedBox(
          width: 200.0,
          height: 30.0,
          child: Card(child: Text(' Price : '+args.price.toString()+' IDR',style: TextStyle(fontSize: 15))
          ),
        ),
        SizedBox(
          width: 200.0,
          height: 30.0,
          child: Card(child: Text(' Netto : '+args.net.toString()+args.unit,style: TextStyle(fontSize: 15))
          ),
        ),
      ],
    );
  }
} 