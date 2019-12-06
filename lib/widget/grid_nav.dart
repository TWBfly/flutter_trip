import 'package:flutter/material.dart';
import 'package:flutter_trip/bean/home_bean_entity.dart';
import 'package:flutter_trip/utils/navigator_util.dart';
import 'package:flutter_trip/widget/webview.dart';

class GridNav extends StatelessWidget {
  final HomeBeanGridnav gridNavModel;
  const GridNav({Key key, @required this.gridNavModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      //相当于cardview
      color: Colors.transparent, borderRadius: BorderRadius.circular(6), clipBehavior: Clip.antiAlias, //带有抗锯齿的剪辑
      child: Column(
        children: _gridNavItems(context),
      ),
    );
  }

  _gridNavItems(BuildContext context) {
    List<Widget> items = [];
    if (gridNavModel == null) return items;
    if (gridNavModel.hotel != null) {
      items.add(_gridNavItem(context, gridNavModel.hotel, true));
    }

    if (gridNavModel.flight != null) {
      items.add(_gridNavItem(context, gridNavModel.flight, false));
    }

    if (gridNavModel.travel != null) {
      items.add(_gridNavItem(context, gridNavModel.hotel, false));
    }
    return items;
  }

  _gridNavItem(BuildContext context, HomeBeanGridnavFlight gridNavItem, bool first) {
    List<Widget> items = [];
    items.add(_mainItem(context, gridNavItem.mainItem));
    items.add(_doubleItem(context, gridNavItem.item1, gridNavItem.item2));
    items.add(_doubleItem(context, gridNavItem.item3, gridNavItem.item4));
    List<Widget> expandItems = [];
    items.forEach((item){
      expandItems.add(Expanded(child: item, flex: 1));
    });
  }

  _mainItem(BuildContext context, HomeBeanGridnavFlightMainitem model) {
    return -_wrapGesture(
        context,
        Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Image.network(
              model.icon,
              fit: BoxFit.contain,
              height: 88,
              width: 121,
              alignment: AlignmentDirectional.bottomEnd,
            ),
            Container(
              margin: EdgeInsets.only(top: 11),
              child: Text(
                model.title,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
        model);
  }

  _doubleItem(BuildContext context, HomeBeanGridnavFlightMainitem topItem, HomeBeanGridnavFlightMainitem bottomItem) {
    return Column(
      children: <Widget>[
        Expanded(
          child: _item(context, topItem, true),
        ),
        Expanded(
          child: _item(context, bottomItem, false),
        ),
      ],
    );
  }

  _wrapGesture(BuildContext context, Widget widget, HomeBeanGridnavFlightMainitem model) {
    return GestureDetector(
      onTap: () {
        NavigatorUtil.push(
            context,
            WebView(
              url: model.url, //             statusBarColor: model.statusBarColor,
              title: model.title,
              //             hideAppBar: model.hideAppBar,
            ));
      },
      child: widget,
    );
  }

  _item(BuildContext context, HomeBeanGridnavFlightMainitem item, bool first) {
    BorderSide borderSide = BorderSide(width: 0.8,color: Colors.white);
    return FractionallySizedBox(//相当于LinearLayout widget
      //撑满父布局的宽度  占用剩余的空间
      widthFactor: 1,
      child: Container(
        decoration: BoxDecoration(
        //装饰器  相当于shape
          border: Border(
            left: borderSide,
            bottom: first?borderSide:BorderSide.none
          ),
        ),
        child: _wrapGesture(context, Center(
          child: Text(
            item.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14,color: Colors.white),
          ),
        ), item),
      ),

    );
  }
}
