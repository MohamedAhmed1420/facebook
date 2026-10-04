import 'package:flutter/material.dart';

import '../../../core/AppColors.dart';

class CreateStores extends StatelessWidget {
  const CreateStores({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Column(
              children: [
                // الصورة العلوية
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    "assets/images/goatK.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                // المساحة البيضاء السفلية للنص
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      "Create a\nStory",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // أيقونة الزائد (+) في المنتصف
            Positioned(
              top: 85, // تضبيط مكان الزر ليكون بين الصورة والنص
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: const BoxDecoration(
                      color: Appcolors.blue, // لون فيسبوك الأزرق
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}