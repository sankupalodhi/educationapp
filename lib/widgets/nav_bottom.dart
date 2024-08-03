import 'package:education_app/view/screen/Alerts_Screen/alerts_screen.dart';
import 'package:education_app/view/screen/Circular_Screen/circular_screen.dart';
import 'package:education_app/view/screen/Events_Screen/events_screen.dart';
import 'package:education_app/view/screen/Gallery_Screen/gallery_screen.dart';
import 'package:education_app/view/screen/Home_Screen/home_Screen.dart';
import 'package:flutter/material.dart';



class NavigationBottom extends StatefulWidget {
  const NavigationBottom({super.key});

  @override
  State<NavigationBottom> createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  int _currentIndex = 0;
  // final List<Widget> _screens = [
  //   DashboardScreen(),
  //   ProfileScreen(),
  //   SettingsScreen(),
  // ];

  @override
  void initState() {
    _currentIndex = 2;
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          EventsScreen(),
          GalleryScreen(),
          HomeScreen(),
          AlertsScreen(),
          CircularScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting, // Fixed
        backgroundColor: Colors.white, // <-- This works for fixed
        selectedItemColor: Colors.cyan.shade400,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        // elevation: 2,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.speaker_notes_rounded),
            label: 'Circular',
          ),
        ],
      ),
    );
  }
}
