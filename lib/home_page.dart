import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
        ),
        body: Container(
            padding: const EdgeInsets.all(40.0),
            child: Column(children: <Widget>[
              Text(
                "Output :$sum",
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: "Enter Number 1"),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: "Enter Number 2"),
                controller: t2,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: const Text("+"),
                      onPressed: doAddition,
                    ),
                    RaisedButton(
                      child: const Text("-"),
                      onPressed: doSub,
                    ),
                    RaisedButton(
                      child: const Text("*"),
                      onPressed: doMul,
                    ),
                    RaisedButton(
                      child: const Text("/"),
                      onPressed: doDiv,
                    ),
                  ]),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    child: const Text("Clear"),
                    color: Colors.greenAccent,
                    onPressed: doClear,
                  ),
                ],
              )
            ])));
  }
}
