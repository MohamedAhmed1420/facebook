import 'package:flutter/material.dart';

import '../../core/AppColors.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(11),
      child: Row(
        children: [
          CircleAvatar(child: Image.asset("assets/images/goat.png")),
          SizedBox(width: 8),
          Text("What’s in Your Mind?"),
          Spacer(),
          Icon(Icons.image, color: Appcolors.green),
        ],
      ),
    );
  }
}
