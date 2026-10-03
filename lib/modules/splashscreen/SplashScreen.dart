import 'package:flutter/material.dart';

import '../../core/AppColors.dart';
import '../loginScreen/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Image.asset("assets/images/facebook_logo.png")),
            Text(
              "From",
              style: TextStyle(color: Appcolors.lightGrey, fontSize: 16),
            ),
            Image.asset("assets/images/meta.png"),
          ],
        ),
      ),
    );
  }
}
