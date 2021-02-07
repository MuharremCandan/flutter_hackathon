import 'package:flutter/material.dart';
import 'package:flutter_engin_hoca/models/ogretmenn.dart';
import 'package:flutter_engin_hoca/models/bagiscii.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color anaRenk = Colors.purple;
  final Color araRenk = Colors.white;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            //Icon(Icons.ac_unit,color: Colors.red,size: 200,),
            circleImage("12"),
            ogretmenButton(),
            circleImage("asdf"),
            bagisciButon()
          ],
        ),
      ),
    );
  }

  Widget circleImage(String path) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.yellow.shade600, width: 5)),
      child: Image.asset("assets/$path.png"),
    );
  }

  Widget bagisciButon() {
    return RaisedButton(
      color: Colors.purple,
      highlightColor: Colors.purple,
      elevation: 60,
      child: Padding(
        padding: EdgeInsets.only(left: 50, right: 50, top: 28, bottom: 28),
        child: Text(
          "Bağışçı",
          style: Theme.of(context).textTheme.headline4.copyWith(color: araRenk),
        ),
      ),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Bagisci()),
      ),
    );
  }


  Widget ogretmenButton() {
    return RaisedButton(
      color: anaRenk,
      highlightColor: Colors.pink,
      elevation: 60,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Text(
          "Öğretmen",
          style: Theme.of(context).textTheme.headline4.copyWith(color: araRenk),
        ),
      ),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Ogretmen()),
      ),
    );
  }
}
