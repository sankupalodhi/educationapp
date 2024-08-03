import 'package:flutter/material.dart';


class CircularScreen extends StatefulWidget {
  const CircularScreen({super.key});

  @override
  State<CircularScreen> createState() => _CircularScreenState();
}

class _CircularScreenState extends State<CircularScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("circular screen \nComming soon...."),
      ),
    );
  }
}
