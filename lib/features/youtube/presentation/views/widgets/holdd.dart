// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class VideoModel {
//   final String? publishedat;
//   final String id;
//   final String? title;
//   final String? desc;
//   final String? image;
//   final String? chTitle;
//   final String? type;

//   VideoModel({
//     required this.id,
//     required this.title,
//     required this.desc,
//     required this.image,
//     required this.chTitle,
//     required this.type,
//     required this.publishedat,
//   });

//   factory VideoModel.fromJson(Map<String, dynamic> json) {
//     return VideoModel(
//       id: json['channelId'],
//       title: json['title'],
//       desc: json['description'],
//       image: json['thumbnails']['maxres']['url'] ?? '',
//       chTitle: json['channelTitle'],
//       type: json['type'],
//       publishedat: json['publishedAt'],
//     );
//   }
// }

// class VideoListView extends StatefulWidget {
//   @override
//   _VideoListViewState createState() => _VideoListViewState();
// }

// class _VideoListViewState extends State<VideoListView> {
//   final TextEditingController _controller = TextEditingController();
//   late Future<List<VideoModel>> futureVideoData;

//   Future<List<VideoModel>> fetchVideoData(String channelId) async {
//     final response =
//         await http.get(Uri.parse('YOUR_API_URL_HERE?channelId=$channelId'));

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       final List items = data['items'];

//       return items.map((item) => VideoModel.fromJson(item['snippet'])).toList();
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   void _search() {
//     setState(() {
//       futureVideoData = fetchVideoData(_controller.text);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Video List'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: _controller,
//               decoration: InputDecoration(
//                 labelText: 'Enter Channel ID',
//                 suffixIcon: IconButton(
//                   icon: Icon(Icons.search),
//                   onPressed: _search,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: FutureBuilder<List<VideoModel>>(
//               future: futureVideoData,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Center(child: CircularProgressIndicator());
//                 } else if (snapshot.hasError) {
//                   return Center(child: Text('Error: ${snapshot.error}'));
//                 } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                   return Center(child: Text('No data found'));
//                 } else {
//                   return ListView.builder(
//                     itemCount: snapshot.data!.length,
//                     itemBuilder: (context, index) {
//                       final video = snapshot.data![index];
//                       return ListTile(
//                         title: Text(video.title ?? 'No Title'),
//                         subtitle: Text(video.desc ?? 'No Description'),
//                         leading: video.image != null
//                             ? Image.network(video.image!)
//                             : null,
//                       );
//                     },
//                   );
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

