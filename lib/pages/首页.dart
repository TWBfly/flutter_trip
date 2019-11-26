import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_trip/bean/home_bean_entity.dart';
import 'package:flutter_trip/utils/cons.dart';
import 'package:flutter_trip/widget/local_nav.dart';
import 'package:http/http.dart' as http;

const APPBAR_SCROLL_OFFSERT = 100;

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imagUrls = [
    "http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg",
    "http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg",
    "http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg"
  ];
  List<HomeBeanLocalnavlist> localNavList = [];

  @override
  void initState() {
    loadData();
  }

  double appBarAlpha = 0;

  _onScroll(double offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSERT;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
    print(alpha);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Stack(
          children: <Widget>[
            MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: NotificationListener(
                    onNotification: (scrollNotification) {
                      if (scrollNotification is ScrollUpdateNotification &&
                          scrollNotification.depth == 0) {
                        _onScroll(scrollNotification.metrics.pixels);
                      }
                      return true;
                    },
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 160,
                          child: Swiper(
                              itemCount: _imagUrls.length,
                              autoplay: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Image.network(
                                  _imagUrls[index],
                                  fit: BoxFit.fill,
                                );
                              },
                              pagination: SwiperPagination()),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(7,4,7,4),
                          child: LocalNav(localNavList),
                        ),
                        Container(
                          height: 800,
                          child: ListTile(
                            title: Text("哈哈"),
                          ),
                        ),
                      ],
                    ))),
            Opacity(
              opacity: appBarAlpha,
              child: Container(
                height: 80,
                decoration: BoxDecoration(color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("首页"),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  //加载数据
  void loadData() async {
    final response = await http.get(utils.HOME_URL);
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      var data = HomeBeanEntity.fromJson(result);
      setState(() {
        localNavList = data.localNavList;
      });
    } else {
      utils.showToast(context, "首页接口请求失败");
    }
  }
}
