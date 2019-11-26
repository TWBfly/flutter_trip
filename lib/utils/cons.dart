import 'package:flutter/cupertino.dart';
import 'package:toast/toast.dart';

class utils{
  static const HOME_URL = 'http://www.devio.org/io/flutter_app/json/home_page.json';

  static showToast(BuildContext context,String value){
    Toast.show(value, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.CENTER);
  }
}
