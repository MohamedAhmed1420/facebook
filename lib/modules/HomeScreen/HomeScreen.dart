import 'package:facebook/core/AppColors.dart';
import 'package:facebook/modules/HomeScreen/CreatePost.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Facebook",
            style: TextStyle(
              fontSize: 30,
              color: Appcolors.blue,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            Icon(Icons.add_box_outlined),
            SizedBox(width: 12),
            Icon(Icons.search),
            SizedBox(width: 12),
            Icon(Icons.message),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.ondemand_video)),
              Tab(icon: Icon(Icons.house_rounded)),
              Tab(icon: Icon(Icons.person_pin)),
              Tab(icon: Icon(Icons.add_alert_sharp)),
              Tab(
                icon: CircleAvatar(
                  child: Image.asset("assets/images/goat.png"),
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CreatePost(),
                  Divider(color: Appcolors.grey.withAlpha(50), thickness: 3),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
