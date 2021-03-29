import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'EE-Calculator',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ),
        body: ButtonsBuild(),
      ),
    );
  }
}

class ButtonsBuild extends StatefulWidget {
  @override
  _ButtonsBuildState createState() => _ButtonsBuildState();
}


class _ButtonsBuildState extends State<ButtonsBuild> {
  Widget buildButton(String buttonText) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(35.0),
        ),
        child: Text(
          '$buttonText',
          style: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.normal,
              color: Colors.grey[900]),
        ),
        onPressed: () {
          print('Number pressed');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
        ),
        Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '0',
                            style: TextStyle(fontSize: 45.0),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          buildButton('7'),
                          buildButton('8'),
                          buildButton('9'),
                          ElevatedButton(
                            child: Text(
                              '+',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.grey[900]),
                            ),
                            onPressed: () {
                              print('+ sign pressed');
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          buildButton('4'),
                          buildButton('5'),
                          buildButton('6'),
                          ElevatedButton(
                            child: Text(
                              '-',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.grey[900]),
                            ),
                            onPressed: () {
                              print('- sign pressed');
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          buildButton('1'),
                          buildButton('2'),
                          buildButton('3'),
                          ElevatedButton(
                            child: Text(
                              '=',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.grey[900]),
                            ),
                            onPressed: () {
                              print('= sign pressed');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}