import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/首页.dart';
import 'package:flutter_trip/pages/My_page.dart';
import 'package:flutter_trip/pages/Search_page.dart';
import 'package:flutter_trip/pages/Travel_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  var _defaultColor = Colors.grey;
  var _activeColor = Colors.blue;
  var _currentIndex = 0;

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
//        onPageChanged: (),
        children: <Widget>[HomePage(), SearchPage(), TravelPage(), MyPager()],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: _defaultColor),
                activeIcon: Icon(Icons.home, color: _activeColor),
                title: Text(
                  "首页",
                  style: TextStyle(
                      color: _currentIndex != 0 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: _defaultColor),
                activeIcon: Icon(Icons.search, color: _activeColor),
                title: Text(
                  "搜索",
                  style: TextStyle(
                      color: _currentIndex != 1 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt, color: _defaultColor),
                activeIcon: Icon(Icons.camera_alt, color: _activeColor),
                title: Text(
                  "旅拍",
                  style: TextStyle(
                      color: _currentIndex != 2 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box, color: _defaultColor),
                activeIcon: Icon(Icons.account_box, color: _activeColor),
                title: Text(
                  "我的",
                  style: TextStyle(
                      color: _currentIndex != 3 ? _defaultColor : _activeColor),
                )),
          ]),
    );
  }
}
