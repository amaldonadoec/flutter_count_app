import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = new TextStyle(fontSize: 25);
    final count = 20;
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo App'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hola mundo',
            style: textStyle,
          ),
          Text(
            '$count',
            style: textStyle,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('hola');
          // count = count + 1;
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
