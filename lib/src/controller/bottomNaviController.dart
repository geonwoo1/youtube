import 'package:get/get.dart';

import '../view/upload.dart';

enum PageName { HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNaviController extends GetxController {
  RxInt pageIndex = 0.obs;

  void changeIndex(int value) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.UPLOAD:
        Get.to(()=>upload());
        break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVITY:
      case PageName.MYPAGE:
        _changePage(value);
        break;
    }
  }

  void _changePage(int value) {
    pageIndex(value);
  }
}
