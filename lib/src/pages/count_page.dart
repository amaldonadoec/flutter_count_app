import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  createState() => _CountPageState();
}

// con guion bajo hace privada el CountPageState()
class _CountPageState extends State<CountPage> {
  final _textStyle = new TextStyle(fontSize: 25);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
        
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Número de clicks',
            style: _textStyle,
          ),
          Text(
            '$_count',
            style: _textStyle,
          )
        ],
      )),
      floatingActionButton: _createButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _subtract,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _add,
        ),
      ],
    );
  }

  void _add() {
    setState(() {
      _count++;
    });
  }

  void _subtract() {
    if (_count != 0) {
      setState(() => _count--);
    }
  }

  void _reset() {
    setState(() => _count = 0);
  }
}
