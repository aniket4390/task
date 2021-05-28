import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
UserCard({required this.label,required this.index});
final String label;
final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey,width: 1.0),
        color: Color(0xFFFAFAFA)
      ),
      padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 12.0),
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
      child: Row(
        children: [
          Hero(
            tag: "icon$index",
            child: Icon(Icons.account_circle,size: 40.0,)),
          SizedBox(width: 20.0,),
          Hero(
            tag: label,
              child: Text(label,style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontSize: 14.0,
              fontWeight: FontWeight.w500
              ),
            ),
          ),
        ],
      )
    );
  }
}