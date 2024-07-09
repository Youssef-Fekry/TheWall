// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:thewall/features/youtube/data/models/videomodell.dart';
// import 'package:thewall/features/youtube/services/youtubeservice.dart';

// class SearchPage extends StatelessWidget {
//   SearchPage({super.key});
//   final TextEditingController _searchController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'YouTube',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.red,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: TextField(
//             onSubmitted: (value) async {
//               // ignore: unused_local_variable
//               List<VideoModel> videoModel =
//                   await Youtubeservice(Dio()).getvideolist(value);
//               // ignore: use_build_context_synchronously
//               GoRouter.of(context).push('/youtubeViewbody');
//             },
//             controller: _searchController,
//             decoration: InputDecoration(
//               label: const Text('Search'),
//               hintText: 'Enter a ChannelID...',
//               border: const OutlineInputBorder(),
//               // Add a clear button to the search bar
//               suffixIcon: IconButton(
//                 icon: const Icon(
//                   Icons.clear,
//                   color: Colors.white,
//                 ),
//                 onPressed: () => _searchController.clear(),
//               ),
//               // Add a search icon or button to the search bar
//               prefixIcon: IconButton(
//                 icon: const Icon(
//                   Icons.search,
//                   color: Colors.white,
//                 ),
//                 onPressed: () {
//                   // Perform the search here
//                 },
//               ),
//               // border: OutlineInputBorder(
//               //   borderRadius: BorderRadius.circular(20.0),
//               // ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

