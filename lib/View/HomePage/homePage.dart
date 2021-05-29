import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/Controller/userController.dart';
import 'package:task/View/HomePage/Components/userCard.dart';

final userController = Get.find<UserController>();
TextEditingController searchController = TextEditingController();
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text("TaskApp"),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            height: 10,width: 280,
            child: Row(
              children: [
                Container(
                  width: 250,
                  child: TextField(style: TextStyle(color: Colors.black),controller: searchController,onChanged: (val)=>userController.findUser(val),) 
                ),
                Icon(Icons.search)
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GetBuilder<UserController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: userController.stateData.length,
                  itemBuilder: (context, index) {
                    if(controller.stateData[index]["name"].toString().toLowerCase().contains(controller.search.toString().toLowerCase()) == true){
                      return GestureDetector(
                        onTap: ()=>Get.toNamed("/UserDetail",arguments: index),
                        child: UserCard(label: controller.stateData[index]["name"] ,index: index),
                      ); 
                    }
                    else return Container();
                  },
                );
              }
            ),
          )
        ],
      )
    );
  }
}
