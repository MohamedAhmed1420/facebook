import 'package:facebook/core/AppColors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Facebook",
          style: TextStyle(
            fontSize: 30,
            color: Appcolors.blue,
            fontWeight: FontWeight.w800,
          ),
        ),

      ),
    );
  }
}
