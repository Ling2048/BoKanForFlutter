import 'package:bokan/model/CategoryIssues.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'api_helper.dart';

// demo1_navigation.dart
class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> { 
  // void _onValueChanged (int value) {
  //   print(value);
  // }
  ScrollController _scrollController;
  var loading = Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: new CircularProgressIndicator(),
                    )
                  ],
                );
  var pageNum = 1;
  var categoryListWidget = <Widget>[];
  var categoryIssues = <Widget>[];
  var infos;
  Animation animation;
  AnimationController animationController;
  Color iconColors = Colors.grey;
  Size size;
  double statusHeight;
  // var categoryInfoWidget = <ExpansionPanel>[];
  var currentId;
  void _read (CategoryIssuesData data) {
    Navigator.push(context, new MaterialPageRoute(builder: (context) => new SecondScreen(data)),);
  }
  void _getCategoryList (id) {
      ApiHelper.getCategoryIssues(id, pageNum).then((res) {
      var categoryIssuesWidget = res.data.map((v) => new Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child:  new Container(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: NetworkImage('http://msharecej.magook.com/jpage3/'+v.resourceId+'/'+v.resourceId+'-'+v.issueId+'/cover_small.jpg'),
                  width: 100,
                  height: 150,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          v.resourceName, 
                          style: TextStyle(
                            fontSize: 25
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        // Expanded(flex: 1, child: Text(v.text, softWrap: true, maxLines: 3,),),
                        Flexible(
                          child: Text(v.text, softWrap: true, maxLines: 3, overflow: TextOverflow.ellipsis,),
                        ),
                        // Text(v.text, softWrap: true, maxLines: 3, overflow: TextOverflow.ellipsis,),
                        ButtonTheme.bar( // make buttons use the appropriate styles for cards
                          child: ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('List', style: TextStyle(fontSize: 18),),
                                onPressed: () {
                                  print(v.issueId);
                                  var dialogState;
                                  // var infos;
                                  showDialog(
                                    context: context,
                                    barrierDismissible: true,
                                    builder: (context) {
                                      print('done');
                                      return StatefulBuilder(
                                        builder: (context, state ) {
                                          print('done2');
                                          // ApiHelper.getCatalogInfo(v.issueId).then((res){
                                          //   print(res.data[0].name);
                                          //   var temp = res.data.map((v){
                                          //     return ExpansionTile(
                                          //       title: Text(v.name),
                                          //       initiallyExpanded: v.sublevels.length > 0 ? true : false,
                                          //       children: v.sublevels.map((vv){
                                          //         return ListTile(title: Text(vv.name));
                                          //       }).toList(),
                                          //     );
                                          //   }).toList();
                                          //   setState(() {
                                          //     infos = temp;
                                          //   });
                                          // });
                                          dialogState = state;
                                          return new AlertDialog(
                                            title: new Text(v.resourceName),
                                            content: new Container(
                                              width: size.width * 0.8,
                                              child: infos != null ? new SingleChildScrollView(
                                                child: Column(
                                                  children: infos,
                                                )
                                                // ExpansionPanelList(
                                                //   expansionCallback: null,
                                                //   children: infos,
                                                // ),
                                              ) : loading,
                                              // child: Row(
                                              //   mainAxisAlignment: MainAxisAlignment.center,
                                              //   children: <Widget>[
                                              //     SizedBox(
                                              //       child: new CircularProgressIndicator(),
                                              //     )
                                              //   ],
                                              // )
                                            ),
                                            actions: <Widget>[
                                                new FlatButton(
                                                    child: new Text('Read'),
                                                    onPressed: () {
                                                        Navigator.of(context).pop();
                                                    },
                                                ),
                                                new FlatButton(
                                                    child: new Text('Close'),
                                                    onPressed: () {
                                                        Navigator.of(context).pop();
                                                    },
                                                ),
                                            ],
                                          );
                                        },
                                    );
                                      
                                    }
                                  );

                                  ApiHelper.getCatalogInfo(v.issueId).then((res){
                                    print(res.data[0].name);
                                    var temp = res.data.map((v){
                                      return ExpansionTile(
                                        title: Text(v.name),
                                        initiallyExpanded: v.sublevels.length > 0 ? true : false,
                                        children: v.sublevels.map((vv){
                                          return ListTile(title: Text(vv.name));
                                        }).toList(),
                                      );
                                    }).toList();
                                    dialogState(() {
                                      infos = temp;
                                    });
                                  });

                                },
                              ),
                              FlatButton(
                                child: const Text('Read', style: TextStyle(fontSize: 18),),
                                onPressed: () { 
                                  _read(v);
                                 },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ) 
                ),
              ],
            ),
          ),
        ),
      )).toList();
      pageNum++;
      setState(() {
        if (categoryIssues.length > 0) {
          categoryIssues.addAll(categoryIssuesWidget);
          var temp = categoryIssues.sublist(0);
          categoryIssues = temp;
        }
        else {
          categoryIssues = categoryIssuesWidget;
        }
      });
    });
  }
  void _getData () {
    ApiHelper.getCategoryList().then((res){
      var widgets = res.data.map((v) => 
        new FlatButton(
          child: new Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: new Text(v.name, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
          ),
          onPressed: () {
            currentId = v.id;
            pageNum = 1;
            categoryIssues.removeRange(0, categoryIssues.length);
            _getCategoryList(v.id);
          },
        )
      ).toList();
      currentId = res.data[0].id;
      _getCategoryList(currentId);
      setState(() {
        categoryListWidget = widgets;
      });
    });
  }
  @override
  void initState() {
    super.initState();
    print('initState');
    _getData();
    _scrollController = new ScrollController();
    _scrollController.addListener(() {
      var current = _scrollController.offset;
      var end = _scrollController.position.maxScrollExtent;//最大滚动
      if (current > end - 100) {
        _getCategoryList(currentId);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;//获取屏幕尺寸
    statusHeight = MediaQuery.of(context).padding.top;//获取状态栏高度
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('期刊'),
      ),
      drawer: new Flex(
        direction: Axis.vertical,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Expanded(
            flex: 1,
            child: new Container(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: categoryListWidget,
              ),
              color: Colors.white,
              width: size.width * 0.5,
              padding: EdgeInsets.fromLTRB(0, statusHeight, 0, 0),
            ),
          ),
        ],
      ),
      body: new Container(
        child: ListView(
          children: categoryIssues,
          controller: _scrollController,
        ),
      ),
      // body: new Container(
      //   width: 100000,
      //   child: new Column(
      //     children: <Widget>[
      //       new SizedBox(
      //         child: new Padding(
      //           child: CupertinoSegmentedControl(
      //             children: {
      //             1: new Flex(
      //               children: <Widget>[
      //                   new Expanded(flex: 1,child: Text("Child 1", textAlign: TextAlign.center,)),
      //                 ],
      //                 direction: Axis.horizontal,
      //               ),
      //               2: new Flex(
      //                 children: <Widget>[
      //                   new Expanded(flex: 1,child: Text("Child 2", textAlign: TextAlign.center,)),
      //                 ],
      //                 direction: Axis.horizontal,
      //               ),
      //               3: new Flex(
      //                 children: <Widget>[
      //                   new Expanded(flex: 1,child: Text("Child 3", textAlign: TextAlign.center,)),
      //                 ],
      //                 direction: Axis.horizontal,
      //               ),
      //             },
      //             onValueChanged: _onValueChanged,
      //           ),
      //           padding: EdgeInsets.all(10),
      //         ),
      //         width: 10000,
      //       )
      //     ],
      //   ),
      // ), 
    );
  }
}

class SecondScreen  extends StatefulWidget {
  final CategoryIssuesData data;
  SecondScreen(this.data);
  @override
  _SecondScreenState createState() => _SecondScreenState(data);
}

class _SecondScreenState extends State<SecondScreen> { 
  final CategoryIssuesData data;
  List<Image> images = new List<Image>();
  _SecondScreenState(this.data);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(data.resourceName),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: new Text('Go back!'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            new RaisedButton(
              child: new Text('GetHash'),
              onPressed: () {
                ApiHelper.getHash(data.resourceId, data.issueId, '1', data.count).then((res) {
                  var imgs = res.data.map((v) {
                    var url = 'http://msharecej.magook.com/page3/' + data.resourceId + '/' 
                    + data.resourceId + '-' + data.issueId + '/' + v.hash + '_big.mg';
                    return new Image(
                      image: NetworkImage(url),
                      width: 100,
                      height: 150,
                    );
                  }).toList();
                  print(imgs[0]);
                  setState(() {
                   images =  imgs;
                  });
                });
              },
            ),
            ListView(
              children: images,
            ),
          ],
        ), 
      ),
    );
  }
}
