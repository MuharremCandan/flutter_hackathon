import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KapanisEkraniBagisci extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bağışçı!")),
      body: Center(
        child: Column(
          children: [
            Expanded(flex: 100, child: Image.asset("assets/bagis.png")),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
