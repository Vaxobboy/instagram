import 'package:flutter/material.dart';

class StoryListWidget extends StatelessWidget {
  const StoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 34,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  "http://source.unsplash.com/random/$index",
                ),
                
              ),
              
            ),
            
          );
        },
      ),
    );
  }
}
