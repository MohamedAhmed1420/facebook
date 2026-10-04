import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String imagePath;
  final String profilePath;

  const StoryCard({
    super.key,
    required this.imagePath,
    required this.profilePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            // صورة البروفايل بأعلى اليسار مع الإطار الأزرق
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF1877F2), // الإطار الأزرق
                    width: 2.5,
                  ),
                ),
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(profilePath),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}