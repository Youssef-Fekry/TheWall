import 'dart:async';
import 'package:dio/dio.dart';
import 'package:thewall/features/youtube/data/models/videomodell.dart';

class Youtubeservice {
  final Dio dio;

  Youtubeservice(this.dio);
  Future<List<VideoModel>> getvideolist() async {
    var response = await dio.get(
        'https://www.googleapis.com/youtube/v3/activities?part=snippet&channelId=UCpFwPWlKZD1lgpZ6oFMf5IA&key=AIzaSyCrFpfPBPWHM3lLRSpdymVNbBM-vr4nu6g');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> items = jsonData['items'];
    List<VideoModel> itemslist = [];
    for (var item in items) {
      VideoModel videoModel = VideoModel(
        id: item['channelId'],
        Title: item['title'],
        desc: item['description'],
        image: item['maxres']['url'],
        chTitle: item['channelTitle'],
        type: item['type'],
        publishedat: item['publishedAt'],
      );
      itemslist.add(videoModel);
    }
    return itemslist;
  }
}
// UCpFwPWlKZD1lgpZ6oFMf5IA
//   } on DioException catch (e) {
    //     final String errorMessage = e.response?.data['error']['message'] ??
    //         ' Oops there was an error please try again later';
    //     throw Exception(errorMessage);
    //   }