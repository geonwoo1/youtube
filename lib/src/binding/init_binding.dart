import 'package:get/get.dart';
import 'package:youtube/src/controller/bottomNaviController.dart';

class InitBinding extends Bindings{
  @override
  void dependencies(){
    Get.put(BottomNaviController(),permanent: true);
  }
}