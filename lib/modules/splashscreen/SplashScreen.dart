import 'package:flutter/material.dart';

import '../../core/AppColors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      body: SafeArea(
        child: Column(
          
          children: [
            Expanded(child: Image.asset("assets/images/facebook_logo.png")),
            Text("From",style: TextStyle(color: Appcolors.lightGrey,fontSize: 16),),
            Image.asset("assets/images/meta.png"),
          ],
        ),
      ),
    );
  }
}
