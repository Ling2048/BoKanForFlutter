import 'package:flutter/material.dart';

class FluterFlex extends StatelessWidget {
  @override
  Widget  build(BuildContext context){
    
   return new Center(
    child:new Container(
      height: 120.0,
      padding:new EdgeInsets.only(left:20.0,right:20.0),//给最外层添加padding
      decoration: new BoxDecoration(
        border:new Border(
          bottom: new BorderSide(width: 1.0,color:const Color(0xff999999))
          // color:const Color(0xff6d9eeb),
        )
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,//子组件的排列方式为主轴两端对齐
        children: <Widget>[
          new Expanded(
            flex:2,//这个item占据剩余空间的份数，因为总数为3，所以此处占据2/3
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,//子组件的在交叉轴的对齐方式为起点
              mainAxisAlignment:MainAxisAlignment.spaceBetween ,//子组件的排列方式为主轴两端对齐
              children: <Widget>[
                new Container(
                  padding:new EdgeInsets.only(top:15.0),//标题写一个top-padding
                  child:new Text(
                  "为什么说Flutter是革命性的",
                  style: new TextStyle(
                    fontSize: 18.0
                  ),
                  ), 
                ),
                 new Container(
                  padding:const EdgeInsets.only(right:13.0,bottom:15.0),
                  child:new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,//子组件的排列方式为主轴两端对齐
                    children: <Widget>[
                      new Text(
                        '央视网',
                      ), 
                       new Text(
                        '2018-03-11',
                      ), 
                    ],
                  )
                 
                ),
                
              ],
            ),
          ),
         
          new Expanded(
            flex:1,//这个item占据剩余空间的份数，因为总数为3，所以此处占据1/3
            child: new Image.asset(//本地图片加载，需在pubspec.yaml配置
              'images/head.jpg',
              height: 100.0,
              fit: BoxFit.cover,
              ),
          ),
        ],
      ),
    ),  
   );
  }
}
