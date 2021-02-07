import 'package:flutter/material.dart';
import 'package:flutter_engin_hoca/models/kapanisEkraniBagisci.dart';
import 'package:lottie/lottie.dart';

class Bagisci extends StatefulWidget {
  @override
  _BagisciState createState() => _BagisciState();
}

class _BagisciState extends State<Bagisci> {
  String dropdownValue = 'One';
  double icnSize = 35;
  int _counter = 0;
  int _counterIki = 0;
  int _counterUc = 0;

  Widget build(BuildContext context) {
    String kirtasiye = "Kırtasiye";
    String kiyafet = "Kıyafet   ";
    String kitap = "Kitap      ";
    return Scaffold(
      appBar: AppBar(title: Text("Bağışçı!")),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: LottieBuilder.asset("assets/donate.json"),
            ),
            SizedBox(
              height: 20,
            ),
            bagissKutusu(kirtasiye),
            SizedBox(
              height: 20,
            ),
            bagissKutusuIki(kitap),
            SizedBox(
              height: 20,
            ),
            bagissKutusuUc(kiyafet),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                SizedBox(
                  width: 20,
                ),
                DropdownButton(
                  hint: Text("Lütfen Bir Okul Seçiniz : "),
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
                donateButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget donateButton() {
    return SizedBox(
      child: RaisedButton(
        color: Colors.green[600],
        highlightColor: Colors.pink,
        elevation: 60,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Bağış",
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white),
          ),
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KapanisEkraniBagisci()),
        ),
      ),
    );
  }

  Widget bagisKutulari(String product) {
    return Container(
        height: 75,
        width: 350,
        color: Colors.purple,
        child: Center(
          child: ListTile(
            title: Center(
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
            onTap: () {},
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
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
                IconButton(
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
              ],
            ),
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$product',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ));
  }

  Widget bagissKutusu(String product) {
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

  Widget bagissKutusuIki(String product) {
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

  Widget bagissKutusuUc(String product) {
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
} //scrolls

//scrolls
