import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class SchoolArticle extends StatelessWidget {
  const SchoolArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 270.w,
    // height: 80.h,
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: Colors.black54.withOpacity(0.3),
          blurRadius: 3,
          spreadRadius: 2,
        ),
      ],
    ),
    child: Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          SizedBox(
            height: 70,
            width: 70,
            child: Image.asset(
              "assets/images/notice.webp", fit: BoxFit.fill,
            ),
          ),


          SizedBox(width: 20.w,),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "RMCS Vidyaranyapura",
                  style: TextStyle(color: Colors.black, fontSize: 13,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "Secures 100% results in ICSE &",
                  style: TextStyle(color: Colors.black, fontSize: 11,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "CBSE syllabus 2023-24",
                  style: TextStyle(color: Colors.black, fontSize: 11,fontWeight: FontWeight.bold),
                ),
              ]
          ),
        ]
    ),


        );

  }
}
