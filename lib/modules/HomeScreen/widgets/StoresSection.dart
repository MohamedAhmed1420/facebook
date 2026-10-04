import 'package:flutter/material.dart';
import 'CardStory.dart';
import 'CreateStores.dart';
// import 'StoreCard.dart'; // Import your normal story card widget here

class StoresSection extends StatelessWidget {
  const StoresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      scrollDirection: Axis.horizontal,
      // Fixed Axis syntax
      itemCount: 20,
      separatorBuilder: (context, index) {
        return const SizedBox(
            width: 10); // Changed height to width for horizontal scroll
      },
      itemBuilder: (context, index) {
        if (index == 0) {
          return const SizedBox(
            width: 110, // Explicit width for horizontal items
            child: CreateStores(),
          );
        }

        // Return regular story item for other indices
        return const StoryCard(imagePath: 'assets/images/lamen.png',
          profilePath: "assets/images/goat1.png",
        );
      },
    );
  }
}
