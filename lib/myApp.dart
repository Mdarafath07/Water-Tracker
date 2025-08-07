import 'package:flutter/material.dart';
import 'package:water_tracker/waterTracker.dart';
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Water Tracker",
      home: Watertracker(),
    );
  }
}
