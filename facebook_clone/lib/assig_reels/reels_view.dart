import 'package:facebook_clone/reels/simple_video_player.dart';
import 'package:flutter/material.dart';

class ReelsView extends StatelessWidget {
  ReelsView({super.key});

  final List<String> videoUrsl = [
    'https://cdn.pixabay.com/video/2024/08/30/228847_large.mp4',
    'https://cdn.pixabay.com/video/2025/04/29/275633_large.mp4',
    'https://cdn.pixabay.com/video/2025/05/13/278750_large.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videoUrsl.length,
        itemBuilder: (context, index) {
          return SimpleVideoPlayer(videoUrl: videoUrsl[index]);
        },
      ),
    );
  }
}
