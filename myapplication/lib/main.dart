import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapplication/splash.dart';

void main(List<String> args) {
  runApp(Myapplication());
}

class Myapplication extends StatelessWidget {
  const Myapplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(350, 800),
      builder: () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Splash Screen',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Splashwidget(),
        );
      },
    );
  }
}
