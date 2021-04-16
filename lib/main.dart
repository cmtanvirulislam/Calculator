import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {

  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor){
    return Container(
      height: MediaQuery.of(context).size.height*0.1*buttonHeight,
      color: buttonColor,
      // ignore: deprecated_member_use
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: BorderSide(color: Colors.white,width: 1,
              style: BorderStyle.solid),
        ),
        padding: EdgeInsets.all(16.0),
        onPressed: null,
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.normal,
              color: Colors.white
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Simple Calculator'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              "0",
              style: TextStyle(fontSize: 38.0),
            ),
          ),

          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              "0",
              style: TextStyle(fontSize: 48.0),
            ),
          ),

          Expanded(
            child: Divider(),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("C", 1, Colors.redAccent),
                        buildButton("⌫", 1, Colors.blue),
                        buildButton("÷", 1, Colors.blue),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("৭", 1, Colors.black54),
                          buildButton("৮", 1, Colors.black54),
                          buildButton("৯", 1, Colors.black54),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("৪", 1, Colors.black54),
                          buildButton("৫", 1, Colors.black54),
                          buildButton("৬", 1, Colors.black54),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("১", 1, Colors.black54),
                          buildButton("২", 1, Colors.black54),
                          buildButton("৩", 1, Colors.black54),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton(".", 1, Colors.black54),
                          buildButton("০", 1, Colors.black54),
                          buildButton("০০", 1, Colors.black54),
                        ]
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*2.5,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("×", 1, Colors.blue),
                      ]
                    ),
                    TableRow(
                        children: [
                          buildButton("⁻", 1, Colors.blue),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("+", 1, Colors.blue),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton("=", 2, Colors.redAccent),
                        ]
                    ),
                      ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
