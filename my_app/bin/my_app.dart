import 'package:my_app/my_app.dart' as my_app;
import 'package:my_app/SubStatefulWidget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'hello world',
      theme: ThemeData(
        primarySwatch: Colors.blue,  // APP 主题
      ),
      home: Scaffold (
        appBar: AppBar(
          title: Text('hello world'), // 页面名称
        ),
        body: Center(
          child: SubStatefulWidget(),
        ),
      )
    );
  }

}
