import 'package:flutter/material.dart';
import 'package:thewall/features/youtube/presentation/views/widgets/videolistview.dart';

class Youtubeviewbody extends StatelessWidget {
  const Youtubeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const BackButton(color: Colors.white),
        backgroundColor: Colors.red,
        title: const Text('YOUTUBE'),
      ),
      body: const VideosResultlistview(),
    );
  }
}

