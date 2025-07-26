import 'package:flutter/material.dart';

class FacebookStories extends StatelessWidget {
  final String storyImage;
  final String profileImage;
  final String profileName;

  const FacebookStories({
    super.key,
    required this.profileImage,
    required this.storyImage,
    required this.profileName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        image: DecorationImage(
          image: NetworkImage(storyImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(13),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(255, 6, 105, 186),
                width: 3,
              ),
            ),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(profileImage),
            ),
          ),
          // SizedBox(
          //   height: 50,
          // ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Text(
              '$profileName',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
