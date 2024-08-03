import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/article.dart';
import '../../../widgets/drawer.dart';
import '../../../widgets/students_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = [
    Image.asset('assets/images/education.png'),
    Image.asset('assets/images/education.png'),
    Image.asset('assets/images/education.png'),
  ];

  final articles = [
    SchoolArticle(),
    SchoolArticle(),
    SchoolArticle(),
    SchoolArticle(),
    SchoolArticle(),
  ];

  int currentIndex = 0;
  int articleIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerScreen(),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.cyanAccent,
          title:  Text('Welcome! Sathish SP',
            style: TextStyle(color: Colors.black, fontSize:15.sp),
          ),
          actions: <Widget>[
            Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.menu_rounded), // Your icon here
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              }
            ),
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: items,
            ),
            DotsIndicator(
              dotsCount: items.length,
              position: currentIndex,
              axis: Axis.horizontal,
              reversed: true,
        
            ),
            SizedBox(height: 10,),
             StudentCard(),
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Articles",
                  style: TextStyle(color: Colors.black, fontSize: 13.sp,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            CarouselSlider(
              options: CarouselOptions(
                height: 80,
                autoPlay: true,
                //aspectRatio: 1.0,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    articleIndex = index;
                  });
                },
              ),
              items: articles,
            ),
            SizedBox(height: 5),
            DotsIndicator(
              dotsCount: articles.length,
              position: articleIndex,
              axis: Axis.horizontal,
              reversed: true,
            ),
            
            
          ],
        
        ),
      ),
    );
  }
}
