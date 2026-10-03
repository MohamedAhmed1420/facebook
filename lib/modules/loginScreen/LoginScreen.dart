import 'package:flutter/material.dart';

import '../../core/AppColors.dart';
import '../HomeScreen/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset("assets/images/facebook_logo.png"),
                    SizedBox(height: 62),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Appcolors.lightGrey.withAlpha(47),
                        filled: true,
                        hintText: "Mobile Number or Email Address",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Appcolors.lightGrey.withAlpha(47),
                        filled: true,
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Appcolors.blue,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Appcolors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "Forgotten Password ?",
                      style: TextStyle(
                        color: Appcolors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Appcolors.white,
                      side: BorderSide(color: Appcolors.blue),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            color: Appcolors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ), 
                  Image.asset("assets/images/meta.png")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
