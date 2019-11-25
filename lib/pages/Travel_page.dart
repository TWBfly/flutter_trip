import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class TravelPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TravelPageState();
}


class _TravelPageState extends State<TravelPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("旅拍"),
      )
    );
  }

}