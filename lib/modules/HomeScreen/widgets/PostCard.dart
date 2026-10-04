import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
    ListTile(
    leading: CircleAvatar(child: Image.asset("assets/images/lamen.png")) ,
    title: Text("Mohamed") ,
    subtitle: Text("8h ago"),
    trailing: Icon(Icons.more_horiz_outlined),
    ),
    SizedBox(height: 10,),
    Image.asset("assets/images/lamen.png"),
    SizedBox(height: 10,),
    Row(
    children: [
      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
      IconButton(onPressed: (){}, icon: Icon(Icons.comment_outlined)),
      IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined)),Spacer(),
      IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_outlined)),
    ],)
    ]
    );
  }
}
