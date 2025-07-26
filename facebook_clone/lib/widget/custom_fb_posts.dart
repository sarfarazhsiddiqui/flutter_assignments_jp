import 'package:flutter/material.dart';

class FbPostWithStats extends StatelessWidget {
  final String userName;
  final String postText;
  final String postImageUrl;
  final int likeCount;
  final int shareCount;

  const FbPostWithStats(
      {required this.userName,
      required this.postText,
      required this.postImageUrl,
      required this.likeCount,
      required this.shareCount,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              const CircleAvatar(child: Icon(Icons.person)),
              const SizedBox(width: 10),
              Text(userName,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 10),

          // Post Text
          Text(postText),

          const SizedBox(height: 10),

          // Post Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(postImageUrl),
          ),

          const SizedBox(height: 10),

          // Like and Share Counts
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('👍 $likeCount Likes'),
//              Text('2000 comments'),
              Text('🔁 $shareCount Shares'),
            ],
          ),

          const SizedBox(height: 10),

          // Action Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.thumb_up_alt_outlined),
              Icon(Icons.mode_comment_outlined),
              Icon(Icons.reply),
            ],
          ),
        ],
      ),
    );
  }
}
