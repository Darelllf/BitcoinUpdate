import 'package:flutter/material.dart';
import 'package:makanprojek/data/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Bitcoin Data'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Welcome> _initBit = [];
  final _bit = Welcome.bitcoinData();

  @override
  void initState() {
    super.initState();
    _initBit = Welcome.bitcoinData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
              width: 40,
            ),
            Container(
              child: Center(
                  child: Text(
                'Bitcoin Price Update',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              )),
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.lightBlueAccent,
                    Colors.redAccent,
                    Colors.purpleAccent
                  ]),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20.0,
                        color: Colors.pink, 
                        offset: Offset(4, 4))
                  ]),
            ),
            Column(
              children: _initBit.map(
                (bitcoin) {
                  return Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Container(
                        width: 1000,
                        height: 900,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: <Color>[
                                Colors.blueGrey,
                                Colors.grey,
                              ]),
                          border: Border.all(color: Colors.purple),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              bitcoin.chartName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 38,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.time.updated.toString(),
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.time.updatedIso.toString(),
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.time.updateduk.toString(),
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.disclaimer,
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.eur.code,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.eur.symbol,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.eur.rate,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.eur.code,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.eur.description,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.eur.rateFloat.toString(),
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.gbp.code,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.gbp.symbol,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.gbp.rate,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.gbp.code,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.gbp.description,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.gbp.rateFloat.toString(),
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.usd.code,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.usd.symbol,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.usd.rate,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.usd.code,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.usd.description,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              bitcoin.bpi.usd.rateFloat.toString(),
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ));
                },
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}
