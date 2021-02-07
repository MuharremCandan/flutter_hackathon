import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KapanisEkraniOgretmen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Öğretmen!")),
      body: Center(
        child: Column(
          children: [
            Expanded(flex: 100, child: Image.asset("assets/eksikler.png")),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
