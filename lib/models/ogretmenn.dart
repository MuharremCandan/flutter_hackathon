import 'package:flutter/material.dart';
import 'package:flutter_engin_hoca/models/kapanisEkraniOgretmen.dart';
import 'package:lottie/lottie.dart';

class Ogretmen extends StatefulWidget {
  _OgretmenState createState() => _OgretmenState();
}

class _OgretmenState extends State<Ogretmen> {
  String dropdownValue = 'One';
  double icnSize = 35;
  int _counter = 0;
  int _counterIki = 0;
  int _counterUc = 0;

  String kirtasiye = "Kırtasiye";
  String kiyafet = "Kıyafet   ";
  String kitap = "Kitap      ";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Öğretmen")),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: LottieBuilder.asset("assets/sendmail.json"),
            ),
            okulEksikleri(kirtasiye),
            SizedBox(height: 25),
            okulEksikleriIki(kiyafet),
            SizedBox(height: 25),
            okulEksikleriUc(kitap),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                DropdownButton(
                  hint: Text("Lütfen Bir Okul Giriniz : "),
                  items: [
                    "Doğanköy İlkokulu",
                    "Gaziakdemir İlkokulu",
                    "Dobruca İlkokulu",
                    "Emek Ortaokulu",
                    "Tophane Ortaokulu",
                    "Zübeyde Hanım Ortaokulu",
                  ]
                      .map((label) => DropdownMenuItem(
                            child: Text(label),
                            value: label,
                          ))
                      .toList(),
                  onChanged: (value) {},
                ),
                eksikleriEklemeButonu(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget eksikleriEklemeButonu() {
    return SizedBox(
      child: RaisedButton(
        color: Colors.green[600],
        highlightColor: Colors.pink,
        elevation: 60,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Ekle",
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white),
          ),
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KapanisEkraniOgretmen()),
        ),
      ),
    );
  }

  Widget okulEksikleri(String product) {
    return Container(
      color: Colors.purple,
      height: 75,
      width: 350,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text(
                '$product',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white),
              ),
              Spacer(),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text(
                    '$_counter',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                child: IconButton(
                    icon: Icon(Icons.arrow_circle_up_rounded),
                    iconSize: icnSize,
                    color: Colors.white,
                    highlightColor: Colors.red,
                    tooltip: 'Burası Talimat Yazısı',
                    onPressed: () {
                      setState(() {
                        _counter++;
                      });
                    }),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.arrow_circle_down_rounded),
                  iconSize: icnSize,
                  color: Colors.white,
                  highlightColor: Colors.red,
                  tooltip: 'Burası Talimat Yazısı',
                  onPressed: () {
                    setState(() {
                      if (_counter < 1) {
                        setState(() {
                          _counter = 0;
                        });
                      } else {
                        setState(() {
                          _counter--;
                        });
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget okulEksikleriIki(String product) {
    return Container(
      color: Colors.purple,
      height: 75,
      width: 350,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text(
                '$product',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white),
              ),
              Spacer(),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text(
                    '$_counterIki',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                child: IconButton(
                    icon: Icon(Icons.arrow_circle_up_rounded),
                    iconSize: icnSize,
                    color: Colors.white,
                    highlightColor: Colors.red,
                    tooltip: 'Burası Talimat Yazısı',
                    onPressed: () {
                      setState(() {
                        _counterIki++;
                      });
                    }),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.arrow_circle_down_rounded),
                  iconSize: icnSize,
                  color: Colors.white,
                  highlightColor: Colors.red,
                  tooltip: 'Burası Talimat Yazısı',
                  onPressed: () {
                    setState(() {
                      if (_counterIki < 1) {
                        setState(() {
                          _counterIki = 0;
                        });
                      } else {
                        setState(() {
                          _counterIki--;
                        });
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget okulEksikleriUc(String product) {
    return Container(
      color: Colors.purple,
      height: 75,
      width: 350,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text(
                '$product',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white),
              ),
              Spacer(),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text(
                    '$_counterUc',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                child: IconButton(
                    icon: Icon(Icons.arrow_circle_up_rounded),
                    iconSize: icnSize,
                    color: Colors.white,
                    highlightColor: Colors.red,
                    tooltip: 'Burası Talimat Yazısı',
                    onPressed: () {
                      setState(() {
                        _counterUc++;
                      });
                    }),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.arrow_circle_down_rounded),
                  iconSize: icnSize,
                  color: Colors.white,
                  highlightColor: Colors.red,
                  tooltip: 'Burası Talimat Yazısı',
                  onPressed: () {
                    setState(() {
                      if (_counterUc < 1) {
                        setState(() {
                          _counterUc = 0;
                        });
                      } else {
                        setState(() {
                          _counterUc--;
                        });
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
