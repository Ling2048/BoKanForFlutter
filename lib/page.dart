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
            CupertinoSegmentedControl(
              children: {
                1: new Expanded(flex: 1,child: Text("Child 1")),
                2: new Expanded(flex: 1,child: Text("Child 2")),
                // 2:Padding(padding: EdgeInsets.all(5.0),child: Text("Child 2"),),
                // 3:Padding(padding: EdgeInsets.all(5.0),child: Text("Child 3"),),
                // 4:Padding(padding: EdgeInsets.all(5.0),child: Text("Child 4"),),
                // 5:Padding(padding: EdgeInsets.all(5.0),child: Text("Child 5"),),
                // 6:Padding(padding: EdgeInsets.all(5.0),child: Text("Child 6"),),
                // 7:Padding(padding: EdgeInsets.all(5.0),child: Text("Child 7"),),
              },
              onValueChanged: _onValueChanged,
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