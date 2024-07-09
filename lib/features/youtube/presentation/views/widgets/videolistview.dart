import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:thewall/features/youtube/data/models/videomodell.dart';
import 'package:thewall/features/youtube/presentation/views/widgets/searchpage.dart';
import 'package:thewall/features/youtube/presentation/views/widgets/videocard.dart';
import 'package:thewall/features/youtube/services/youtubeservice.dart';

class VideosResultlistview extends StatefulWidget {
  const VideosResultlistview({super.key});

  @override
  State<VideosResultlistview> createState() => _VideosResultlistviewState();
  void initState()async {
   videoModel = await Youtubeservice(Dio()).getvideolist();
  }
}

@override
void dispose() {
  dispose();
}

class _VideosResultlistviewState extends State<VideosResultlistview> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Videocard(videoModel: ,);
          }),
    );
  }
}
