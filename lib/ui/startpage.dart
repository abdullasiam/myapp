import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/const/appcolor.dart';
import 'package:myapp/ui/loginpage.dart';

class startwidget extends StatefulWidget {
  const startwidget({ Key? key }) : super(key: key);

  @override
  _startwidgetState createState() => _startwidgetState();
}

class _startwidgetState extends State<startwidget> {
  void initState(){
    Timer(Duration (seconds: 3), ()=>Navigator.push(context,
     MaterialPageRoute(builder: (_)=>Loginwidget())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: appcolor.mycolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("Mridul App",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 44.sp,
            ),),
          ),
          SizedBox(
            height: 20.h,
          ),
          CircularProgressIndicator(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}