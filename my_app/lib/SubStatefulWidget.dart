import 'package:flutter/material.dart';

class SubStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print('create state');
    return TestState();
  }
}

class TestState extends State<SubStatefulWidget> {
  int count = 1;
  String name = 'test';

  @override
  void initState() {
    print('init state');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('did change dependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant SubStatefulWidget oldWidget) {
    count++;
    print('did update widget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  void reassemble() {
    print('reassemble');
    super.reassemble();
  }

  void changeName() {
    setState(() {
      print('set state');
      this.name = 'flutter';
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Column(
      children: <Widget> [
        TextButton(child: Text('$name $count'),
        onPressed: () => this.changeName(),)
      ],
    );
  }
}
