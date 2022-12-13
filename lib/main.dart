import 'package:alcoolxgasolina/widgets/input.widget.dart';
import 'package:alcoolxgasolina/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool x Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          children: <Widget>[
            Logo(),
            Container(
              margin: EdgeInsets.all(30),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Compensa abastecer com Gasolina",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 40,
                    fontFamily: "Big Shoulders Display",
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: FloatingActionButton(
                    child: Text(
                      "CALCULAR NOVAMENTE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Big Shoulders Display",
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ]),
            ),
            Input(
              ctrl: _gasCtrl,
              label: "Gasolina",
            ),
            Input(
              ctrl: _alcCtrl,
              label: "Alcool",
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(60),
              ),
              child: FloatingActionButton(
                child: Text(
                  "CALCULAR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: "Big Shoulders Display",
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ));
  }
}