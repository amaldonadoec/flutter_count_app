import 'package:flutter/material.dart';

import 'pages/count_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountPage()
      );
  }
}
