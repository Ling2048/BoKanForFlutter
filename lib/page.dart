import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// demo1_navigation.dart
class FirstScreen extends StatelessWidget {
  void _onValueChanged (int value) {
    print(value);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      body: new Container(
        width: 100000,
        child: new Column(
          children: <Widget>[
            new SizedBox(
              child: new Padding(
                child: CupertinoSegmentedControl(
                  children: {
                  1: new Flex(
                    children: <Widget>[
                        new Expanded(flex: 1,child: Text("Child 1", textAlign: TextAlign.center,)),
                      ],
                      direction: Axis.horizontal,
                    ),
                    2: new Flex(
                      children: <Widget>[
                        new Expanded(flex: 1,child: Text("Child 2", textAlign: TextAlign.center,)),
                      ],
                      direction: Axis.horizontal,
                    ),
                    3: new Flex(
                      children: <Widget>[
                        new Expanded(flex: 1,child: Text("Child 3", textAlign: TextAlign.center,)),
                      ],
                      direction: Axis.horizontal,
                    ),
                  },
                  onValueChanged: _onValueChanged,
                ),
                padding: EdgeInsets.all(10),
              ),
              width: 10000,
            )
          ],
        ),
      ), 
    );
  }
}


// new RaisedButton(
//           child: new Text('Launch second screen'),
//           onPressed:() {
//             Navigator.push(
//               context,
//               new MaterialPageRoute(builder: (context) => new SecondScreen()),
//             );
//           },
//         ),

class SecondScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second Screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Go back!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}