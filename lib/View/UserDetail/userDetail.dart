import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/Controller/userController.dart';

final userController = Get.find<UserController>();

class UserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(userController.stateData[Get.arguments]["name"].runtimeType);
    return Scaffold(
      appBar: AppBar(
        title: Text("UserDetails"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            height: 400.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey,width: 1.0),
              color: Color(0xFFFAFAFA)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(tag: "icon${Get.arguments}", child: Icon(Icons.account_circle,size: 80.0,)),
                SizedBox(height: 20.0),
                Hero(tag: userController.stateData[Get.arguments]["name"], child: Text(userController.stateData[Get.arguments]["name"],style: myTextStyle())),
                SizedBox(height: 15.0,),
                Divider(
                  color: Colors.grey,height: 1.0,
                ),
                SizedBox(height: 15.0,),
                myText(label: "email",),
                SizedBox(height: 10.0,),
                myText2(label: "company",label2: "name"),
                SizedBox(height: 10.0,),
                myText(label: "phone",),
                SizedBox(height: 10.0,),
                myText(label: "website",),
              ],
            ),
          ),
        ),
      ),
    );
  }

  myText({required String label}) {
    return Text("$label : " +userController.stateData[Get.arguments]["$label"],style: myTextStyle());
  }
  myText2({required String label,required String label2}) {
    return Text("$label : " +userController.stateData[Get.arguments]["$label"][label2],style: myTextStyle());
  }

  myTextStyle() {
    return TextStyle(
      color: Colors.black,
      fontFamily: "Poppins",
      fontSize: 20.0,
      fontWeight: FontWeight.w500
    );
  }

 }
