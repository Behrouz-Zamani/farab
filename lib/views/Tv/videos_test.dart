import 'package:flutter/material.dart';
import 'package:appinio_video_player/appinio_video_player.dart';

class VideoTestesOk extends StatefulWidget {
  const VideoTestesOk({super.key});

  @override
  State<VideoTestesOk> createState() => _VideoTestesOkState();
}

class _VideoTestesOkState extends State<VideoTestesOk> {
  
  late CustomVideoPlayerController _customVideoPalayerController;
  Uri uri = Uri.parse(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }
  @override
  void dispose() {
    _customVideoPalayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child: CustomVideoPlayer(
              customVideoPlayerController: _customVideoPalayerController,),),
    );
  }

  void initializeVideoPlayer() {
    VideoPlayerController videoPlayerController;
    videoPlayerController = VideoPlayerController.networkUrl(uri)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPalayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: videoPlayerController,
    );
  }
}
