import 'package:flutter/material.dart';
import 'package:flutter_engin_hoca/models/ogretmenn.dart';
import 'package:flutter_engin_hoca/models/bagiscii.dart';

import 'package:flutter/material.dart';
import 'package:flutter_engin_hoca/view/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upgrader Team Project',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Upgrader Team Project'),
    );
  }
}
