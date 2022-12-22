import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

import '../../theme/constant.dart';

class Video extends StatefulWidget {
  final String videoLink;
  const Video({Key? key, required this.videoLink}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  String videoLink =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    videoPlayerController = VideoPlayerController.network(videoLink);
    await videoPlayerController.initialize();

    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true,
        //looping: true,
        additionalOptions: (context) {
          return <OptionItem>[
            OptionItem(
              onTap: () => debugPrint('Option 1 Pressed'),
              iconData: Icons.chat,
              title: 'Option 1',
            ),
            OptionItem(
                onTap: () => debugPrint('Option 2 Pressed'),
                iconData: Icons.share,
                title: 'Option 2')
          ];
        });
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: chewieController != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Chewie(
                  controller: chewieController!,
                ),
              )
            : Center(
                child: CircularProgressIndicator(color: buttonColor),
              ));
  }
}
