import 'package:get/get.dart';
import 'package:task/Controller/userController.dart';

class MyBinding extends Bindings{
 @override
  void dependencies() {
    Get.lazyPut(() => UserController());
    //Get.put(UserController());
  } 
}