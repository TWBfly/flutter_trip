import 'package:flutter/material.dart';

class MyPager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyPagerState();
}


class _MyPagerState extends State<MyPager> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("我的"),
      )
    );
  }

}