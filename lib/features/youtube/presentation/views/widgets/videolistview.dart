import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:thewall/features/youtube/data/models/videomodell.dart';
import 'package:thewall/features/youtube/presentation/views/widgets/videocard.dart';
import 'package:thewall/features/youtube/services/youtubeservice.dart';

class VideosResultlistview extends StatefulWidget {
  const VideosResultlistview({super.key});

  @override
  State<VideosResultlistview> createState() => _VideosResultlistviewState();
}

@override
void dispose() {
  dispose();
}

class _VideosResultlistviewState extends State<VideosResultlistview> {
  List<VideoModel> itemModel = [];
  @override
  void initState() {
    super.initState();
    getVideoslist();
  }

  Future<void> getVideoslist() async {
    itemModel = await Youtubeservice(Dio()).getvideolist();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: itemModel.length,
          itemBuilder: (context, index) {
            return Videocard(videoModel: itemModel[index]);
          }),
    );
  }
}
