import 'dart:async';

import 'package:dio/dio.dart';
import 'package:thewall/features/youtube/data/models/videomodell.dart';
import 'package:thewall/features/youtube/presentation/views/widgets/searchpage.dart';

class Youtubeservice {
  final Dio dio;

  Youtubeservice(this.dio);
  Future<VideoModel> getvideolist({String? channelid}) async {
    // try {
    Response response = await dio.get(
        'https://www.googleapis.com/youtube/v3/activities?part=snippet&channelId=$channelid&key=AIzaSyCrFpfPBPWHM3lLRSpdymVNbBM-vr4nu6g');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> items = jsonData['items'];
    List<VideoModel> itemslist = [];
    for (var item in items) {
      VideoModel videoModel  = VideoModel(
       id: ,
       Title: Title,
       desc: desc,
       image: image, 
       chTitle: chTitle
       type: 'Type',
       publishedat: publishedat,)
    }
    
  }
}
// UCpFwPWlKZD1lgpZ6oFMf5IA
//   } on DioException catch (e) {
    //     final String errorMessage = e.response?.data['error']['message'] ??
    //         ' Oops there was an error please try again later';
    //     throw Exception(errorMessage);
    //   }