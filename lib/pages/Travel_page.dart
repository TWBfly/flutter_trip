import 'package:flutter/material.dart';
import 'package:flutter_trip/dao/travel_dao.dart';
import 'package:flutter_trip/dao/travel_tab_dao.dart';
import 'package:flutter_trip/model/travel_tab_model.dart';
import 'package:flutter_trip/pages/travel_tab_page.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class TravelPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> with TickerProviderStateMixin {
  TabController _controller;
  List<TravelTab> tabs = [];
  TravelTabModel travelTabModel;

  @override
  void initState() {
    _controller = TabController(length: 0, vsync: this);
    TravelTabDao.fetch().then((TravelTabModel model) {
      _controller = TabController(length: model.tabs.length, vsync: this);
      setState(() {
        tabs = model.tabs;
        travelTabModel = model;
      });
    }).catchError((e) {
      print(e);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 30),
          child: TabBar(
            controller: _controller,
            isScrollable: true,
            labelColor: Colors.black,
            labelPadding: EdgeInsets.fromLTRB(20, 0, 10, 5),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.blue, width: 3), insets: EdgeInsets.only(bottom: 3),
              //                  strokeCap:StrokeCap.round
            ),
            tabs: tabs.map((TravelTab tab) {
              return Tab(
                text: tab.labelName,
              );
            }).toList(),
          ),
        ),
        Flexible(
          child: TabBarView(
            controller: _controller,
            children:  tabs.map((TravelTab tab) {
              return TravelTabPage(
                travelUrl: travelTabModel.url,
                params: travelTabModel.params,
                groupChannelCode: tab.groupChannelCode,
              );
            }).toList(),
          ),
        )
      ],
    ));
  }
}
