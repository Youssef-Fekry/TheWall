import 'dart:async';

import 'package:dio/dio.dart';
import 'package:thewall/features/youtube/data/models/videomodell.dart';

class Youtubeservice {
  final Dio dio;

  Youtubeservice(this.dio);
  Future<VideoModel> getvideolist({String? channelid}) async {
    try {
      Response response = await dio.get(
          'https://www.googleapis.com/youtube/v3/activities?part=snippet&channelId=$channelid&key=AIzaSyCrFpfPBPWHM3lLRSpdymVNbBM-vr4nu6g');
      Map<String,dynamic> jsonData = response.data;

      // Map<String, dynamic> jsonData = response.data;
      // List<dynamic> videos = jsonData['item'];
      // VideoModel videoModel = VideoModel.fromJson(response.data);

      return videoModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          ' Oops there was an error please try again later';
      throw Exception(errorMessage);
    }
  }
}
// UCpFwPWlKZD1lgpZ6oFMf5IA
