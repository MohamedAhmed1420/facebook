import 'package:facebook/core/AppColors.dart';
import 'package:facebook/modules/HomeScreen/widgets/CreatePost.dart';
import 'package:facebook/modules/HomeScreen/widgets/PostCard.dart';
import 'package:facebook/modules/HomeScreen/widgets/StoresSection.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
          actions: const [
            Icon(Icons.add_box_outlined),
            SizedBox(width: 12),
            Icon(Icons.search),
            SizedBox(width: 12),
            Icon(Icons.message),
            SizedBox(width: 12),
          ],
          bottom: const TabBar(
            indicatorColor: Appcolors.blue,
            labelColor: Appcolors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.ondemand_video)),
              Tab(icon: Icon(Icons.house_rounded)),
              Tab(icon: Icon(Icons.person_pin)),
              Tab(icon: Icon(Icons.add_alert_sharp)),
              Tab(
                icon: CircleAvatar(
                  radius: 14,
                  backgroundImage: AssetImage("assets/images/goat.png"),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1: Home Feed
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const CreatePost(),
                      Divider(
                        color: Appcolors.grey.withOpacity(0.2),
                        thickness: 3,
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: size.height * 0.23
                    ,
                    child: const StoresSection(),
                  ),
                ),
                // Add Posts SliverList here
                SliverToBoxAdapter(
                  child: Divider()
                )
                ,SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return const  PostCard();
                    },
                    childCount: 10,
                  ),
                )
              ],
            ),

            // Tabs 2 - 6 Placeholders
            const Center(child: Text("Watch")),
            const Center(child: Text("Marketplace")),
            const Center(child: Text("Profile")),
            const Center(child: Text("Notifications")),
            const Center(child: Text("Menu")),
          ],
        ),
      ),
    );
  }
}