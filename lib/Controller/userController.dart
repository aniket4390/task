import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/Service/HttpService.dart';

class UserController extends GetxController{
  //var stateData =[].obs;
  RxList<dynamic> stateData = [].obs;//RxList<RxMap<dynamic, dynamic>>[{}]; //stateData = [{}].;
  RxList<dynamic> stateData2 = [].obs;
  Rx<String> search ="".obs;
  //Rx<String> isSearchOpen = "false".obs;
   //var isSearchOpen = false.obs;
  var isSearchOpen = false.obs;
  Map<String,String> icon = {
    "active" : "search"
  }.obs;


  updateSearchStatus(){
    print("stat $isSearchOpen");
    //isSearchOpen == RxString("false") ? isSearchOpen = RxString("true") : isSearchOpen = RxString("false");
     isSearchOpen == RxBool(false) ? isSearchOpen = RxBool(true) : isSearchOpen = RxBool(false);
    //isSearchOpen == false ? isSearchOpen = true : isSearchOpen = false;
    update();
  }
  
  @override
  void onInit() async{
    stateData = RxList(await getData());
    print(stateData);
    update();
    super.onInit();
  }

  getData() async{
    var response = await HttpService().get();
    var decodedResponse = await json.decode(response);
    return decodedResponse;
  }

  findUser(val){
    search = RxString(val);
    val == "" ? icon["active"] = "search" :icon["active"] = "close";
    print(search);
    // for(int i = 0; i< stateData.length; i++){
    //   if(stateData[i]["name"].toString().contains(val)){
    //     stateData2.add(stateData[i]);
    //   }
    // }
    update();
    print(stateData2);
  }
}
