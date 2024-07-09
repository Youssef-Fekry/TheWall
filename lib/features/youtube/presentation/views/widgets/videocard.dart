import 'package:flutter/material.dart';
import 'package:thewall/features/youtube/data/models/videomodell.dart';

class Videocard extends StatelessWidget {
  const Videocard({required this.videoModel, super.key});
  final VideoModel videoModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(videoModel.image ?? ''),
          const SizedBox(
            height: 10,
          ),
          Text(
            videoModel.id,
            style: const TextStyle(color: Colors.black, fontSize: 32),
          ),
          Text(videoModel.Title ?? '',
              style: const TextStyle(color: Colors.black, fontSize: 32)),
          Text(videoModel.desc ?? '',
              style: const TextStyle(color: Colors.black, fontSize: 32)),
          Text(videoModel.chTitle ?? '',
              style: const TextStyle(color: Colors.black, fontSize: 32)),
          Text(videoModel.Type ?? '',
              style: const TextStyle(color: Colors.black, fontSize: 32)),
          Text(videoModel.publishedat ?? '',
              style: const TextStyle(color: Colors.black, fontSize: 32)),
        ],
      ),
    );
  }
}
