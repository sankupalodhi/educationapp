
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/nav_bottom.dart';
import '../Login_Page/login_screen.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();


    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(() => LoginPage());
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.black54,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Image.asset("assets/images/kar.png", fit: BoxFit.fill),
        ),
      ),
    );
  }
}


