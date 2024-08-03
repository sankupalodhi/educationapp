import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class StudentCard extends StatefulWidget {
  const StudentCard({super.key});

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 280.w,
            height: 100.h,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
              borderRadius: BorderRadius.circular(5),
            ),
          child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15.h,),
            CircleAvatar(
              radius: 40.r,
              backgroundImage:
              AssetImage("assets/images/face.jpg"),
            ),
            SizedBox(width: 20.w,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text(
                "Tanav SP",
                style: TextStyle(color: Colors.black, fontSize: 13.sp,fontWeight: FontWeight.bold),
              ),
                SizedBox(height: 5.h,),
                Text(
                  "Grade: 7th - Section: A",
                  style: TextStyle(color: Colors.black, fontSize: 10.sp,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.h,),
                Text(
                  "House: Sapphire",
                  style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.h,),
                Text(
                  "Roll No. 1185",
                  style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),
                ),
            ]
            ),
          ]
          ),

          ),
          SizedBox(height: 10),
          Container(
            width: 280.w,
            height: 100.h,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // SizedBox(height: 15.h,),
                  CircleAvatar(
                    radius: 40.r,
                    backgroundImage:
                    AssetImage("assets/images/face.jpg"),
                  ),
                  SizedBox(width: 20.w,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 5.h,),
                        Text(
                          "Adira SP",
                          style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.h,),
                        Text(
                          "Grade: 4th - Section: B",
                          style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.h,),
                        Text(
                          "House: Emerald",
                          style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.h,),
                        Text(
                          "Roll No. 1185",
                          style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                      ]
                  ),
                ]
            ),

          ),
        ],
      ),
    );

  }

}
