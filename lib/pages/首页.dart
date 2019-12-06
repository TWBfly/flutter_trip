import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_trip/bean/home_bean_entity.dart';
import 'package:flutter_trip/utils/cons.dart';
import 'package:flutter_trip/widget/local_nav.dart';
import 'package:flutter_trip/widget/webview.dart';
import 'package:http/http.dart' as http;

const APPBAR_SCROLL_OFFSERT = 100;

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  List _imagUrls = [
    "http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg",
    "http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg",
    "http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg"
  ];
  List<HomeBeanLocalnavlist> localNavList = [];
  List<HomeBeanBannerlist> bannerList = [];
  List<HomeBeanSubnavlist> subNavList = [];
  HomeBeanGridnav gridNavModel;

  @override
  void initState() {
    loadData();
  }

  double appBarAlpha = 0;
  var is_autoplay = true;

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
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused:
        {
          setState(() {
            is_autoplay = false;
          });
        }
        break;
      case AppLifecycleState.resumed:
        {
          setState(() {
            is_autoplay = true;
          });
        }
        break;
      default:
        {
          setState(() {
            is_autoplay = true;
          });
        }
        break;
    }
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
                      if (scrollNotification is ScrollUpdateNotification && scrollNotification.depth == 0) {
                        _onScroll(scrollNotification.metrics.pixels);
                      }
                      return true;
                    },
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 160,
                          child: Swiper(
                              onTap: (index) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WebView(
                                              url: bannerList[index].url,
                                            )));
                              },
                              itemCount: bannerList.length,
                              autoplay: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Image.network(
                                  bannerList[index].icon,
                                  fit: BoxFit.fill,
                                );
                              },
                              pagination: SwiperPagination()),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(7, 4, 7, 4),
                          child: LocalNav(localNavList),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(7, 4, 7, 4),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                              ),
                              height: 130,
                              child: GridView.builder(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5, childAspectRatio: 1.0),
                                  itemCount: subNavList.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8),
                                        child: Column(
                                          children: <Widget>[
                                            Image.network(
                                              subNavList[index].icon,
                                              width: 20,
                                              height: 20,
                                            ),
                                            Text(subNavList[index].title),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            )),
                        Container(
                          height: 800,
                          child: ListTile(
                            title: Text(""),
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
    final response = await http.get(Utils.HOME_URL);
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      var data = HomeBeanEntity.fromJson(result);
      setState(() {
        localNavList = data.localNavList;
        bannerList = data.bannerList;
        gridNavModel = data.gridNav;
        subNavList = data.subNavList;
      });
    } else {
      Utils.showToast(context, "首页接口请求失败");
    }
  }

  _gridViewItem(BuildContext context, int index) {
    return Container(
      child: Text("123455"),
    );
  }
}
