// ignore_for_file: non_constant_identifier_names

class VideoModel {
  final String? publishedat;
  final String id;
  final String? Title;
  final String? desc;
  final String? image;
  final String? chTitle;
  final String? Type;

  VideoModel({
    required this.id,
    required this.Title,
    required this.desc,
    required this.image,
    required this.chTitle,
    required this.Type,
    required this.publishedat,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      id: json['items'][0]['snippet']['channelId'],
      Title: json['items'][0]['snippet']['title'],
      desc: json['items'][0]['snippet']['description'],
      image: json['items'][0]['snippet']['thumbnails']['maxres']?['url'] ?? '',
      chTitle: json['items'][0]['snippet']['channelTitle'],
      Type: json['items'][0]['snippet']['type'],
      publishedat: json['items'][0]['snippet']['publishedAt'],
    );
  }

  void init() {}

  void fetchVideoData(String text) {}
}
