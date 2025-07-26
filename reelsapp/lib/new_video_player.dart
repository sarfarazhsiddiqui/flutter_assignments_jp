import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NewVideoPlayer extends StatefulWidget {
  final String videoUrl;
  const NewVideoPlayer({required this.videoUrl});

  @override
  State<NewVideoPlayer> createState() => _NewVideoPlayerState();
}

class _NewVideoPlayerState extends State<NewVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
//    _controller = VideoPlayerController.networkUrl(widget.videoUrl as Uri)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          )
        : Center(child: CircularProgressIndicator());
  }
}
