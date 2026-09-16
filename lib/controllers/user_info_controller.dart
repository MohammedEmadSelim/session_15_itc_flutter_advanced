import 'package:flutter/cupertino.dart';

class UserInfoController extends ChangeNotifier{

  String userName = "";


  void updateUserName(String name ){
    userName = name;
    notifyListeners();
  }

}