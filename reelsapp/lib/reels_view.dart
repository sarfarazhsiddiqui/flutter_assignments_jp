import 'package:flutter/material.dart';
import 'package:reelsapp/new_video_player.dart';

class ReelsView extends StatelessWidget {
  ReelsView({super.key});

  final List<String> videoUrsl = [
    'https://cdn.pixabay.com/video/2024/08/30/228847_large.mp4',
    'https://cdn.pixabay.com/video/2025/06/09/284566_tiny.mp4',
    'https://cdn.pixabay.com/video/2025/05/01/275983_tiny.mp4',
    'https://cdn.pixabay.com/video/2025/04/09/270940_tiny.mp4',
    'https://cdn.pixabay.com/video/2025/03/29/268528_tiny.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videoUrsl.length,
        itemBuilder: (context, index) {
          return NewVideoPlayer(videoUrl: videoUrsl[index]);
        },
      ),
    );
  }
}
