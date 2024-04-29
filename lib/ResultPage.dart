import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String val;
  final String str_val;
  final String str;
  ResultPage(this.val, this.str_val, this.str);
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF1D1E33),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              alignment: Alignment.bottomLeft,
              //height: MediaQuery.sizeOf(context).height - 700,
            ),
          ),
          Expanded(
            flex: 11,
            child: Card(
              margin: EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    widget.str_val,
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  ),
                  Text(
                    widget.val,
                    style: TextStyle(
                      fontSize: 90.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      widget.str,
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ],
              ),
              //height: MediaQuery.sizeOf(context).height - 320,
              color: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Container(
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                color: Colors.pink,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
