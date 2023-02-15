import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/src/controller/bottomNaviController.dart';
import 'package:youtube/src/view/home.dart';
import 'components/image_data.dart';


class App extends GetView<BottomNaviController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child:Obx(()=> Scaffold(
        body:IndexedStack(
          index: controller.pageIndex.value,
          children: [
            Home()
            ,Container(
              child: Center(child: Text("검색")),
            ),Container(
              child: Center(child: Text("업로드")),
            ),Container(
              child: Center(child: Text("활동")),
            ),Container(
              child: Center(child: Text("마이페이지")),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          currentIndex: controller.pageIndex.value,
          onTap: controller.changeIndex,
          items: [
            BottomNavigationBarItem(
              icon: imageData(IconsPath.homeOff),
              label: "홈",
            ),
            BottomNavigationBarItem(
              icon: imageData(IconsPath.searchOff),
              label: "캘린더",
            ),
            BottomNavigationBarItem(
              icon: imageData(IconsPath.uploadIcon),
              label: "홈",
            ),
            BottomNavigationBarItem(
              icon: imageData(IconsPath.activeOff),
              label: "홈",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              label: "홈",
            ),
          ],
        ),
      ),),
      onWillPop: () async {
    return false;
    },
      );
  }
}
