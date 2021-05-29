import 'dart:convert';
import 'package:get/get.dart';
import 'package:task/Service/HttpService.dart';

class UserController extends GetxController{
  RxList<dynamic> stateData = [].obs; //Observable Data Type
  Rx<String> search ="".obs; //Observable Data Type
  
  @override
  void onInit() async{ //Initialization
    stateData = RxList(await getData()); 
    print(stateData);
    update();
    super.onInit();
  }

  getData() async{  /// Api Call
    var response = await HttpService().get();
    var decodedResponse = await json.decode(response);
    return decodedResponse;
  }

  findUser(val){  //User List Filter
    search = RxString(val);
    update();
  }
}
