import 'package:education_app/view/Profile_Screen/aboutus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Sathish SP",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),),
              accountEmail: Text("satish@gmail.com",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(child: Image.asset("assets/images/face.jpg"),),
    ),
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
            ),
          ),
          ListTile(
            leading: Icon(Icons.business,size: 16.sp,color: Colors.black),
            trailing: Icon(Icons.arrow_right),
            title: Text("About Us",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            onTap: (){
              Get.to(() => const AboutUs());
            },
          ),
          ListTile(
            leading: Icon(Icons.support,size: 16.sp,color: Colors.black),
            trailing: Icon(Icons.arrow_right),
            title: Text("Support",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip_rounded,size: 16.sp,color: Colors.black),
            trailing: Icon(Icons.arrow_right),
            title: Text("Privacy Policy",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.speaker_notes_rounded,size: 16.sp,color: Colors.black),
            trailing: Icon(Icons.arrow_right),
            title: Text("Terms and conditions",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings,size: 16.sp,color: Colors.black),
            trailing: Icon(Icons.arrow_right),
            title: Text("Setting",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.logout,size: 16.sp,color: Colors.black),
            trailing: Icon(Icons.arrow_right),
            title: Text("Log Out",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            onTap: (){},
          ),

        ],
      ),


    );
  }

}
