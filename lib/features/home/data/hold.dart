// // import 'package:flutter/material.dart';

// // const String instagramUrl = 'https://www.instagram.com/your_instagram_profile';
// // const String snapchatUrl =
// //     'https://www.snapchat.com/add/your_snapchat_username'; // Public profile URLs might not be available
// // const String tiktokUrl = 'https://www.tiktok.com/@your_tiktok_username';

// // Future<int> getInstagramFollowerCount(String url) async {
// //   // Implement Instagram-specific logic to scrape follower count
// //   // This example assumes a hypothetical class 'FollowerCountParser' that extracts the count
// //   final followerCountParser = FollowerCountParser(url);
// //   return await followerCountParser.extractCount();
// // }

// // Future<int> getSnapchatFollowerCount(String url) async {
// //   // Implement Snapchat-specific logic (likely not possible due to private profiles)
// //   throw Exception('Snapchat follower count scraping not supported');
// // }

// // Future<int> getTiktokFollowerCount(String url) async {
// //   // Implement TikTok-specific logic to scrape follower count
// //   // This example assumes a hypothetical class 'TiktokCountExtractor' that extracts the count
// //   final tiktokCountExtractor = TiktokCountExtractor(url);
// //   return await tiktokCountExtractor.extractCount();
// // }

// // class MyApp extends StatefulWidget {
// //   @override
// //   _MyAppState createState() => _MyAppState();
// // }

// // class _MyAppState extends State<MyApp> {

// //   Future<void> _fetchFollowerCounts() async {
// //     setState(() => isBusyFetching = true);
// //     try {
// //       instagramFollowers = await getInstagramFollowerCount(instagramUrl);
// //       snapchatFollowers = await getSnapchatFollowerCount(snapchatUrl);
// //       tiktokFollowers = await getTiktokFollowerCount(tiktokUrl);
// //     } catch (error) {
// //       print('Error fetching follower counts: $error');
// //       // Handle errors gracefully, e.g., display an error message to the user
// //     } finally {
// //       setState(() => isBusyFetching = false);
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     throw UnimplementedError();
// //   }
// // }

// // import 'package:datascrap/controller.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:html/dom.dart' as dom;
// // import 'package:html/parser.dart' as parser;

// // class HomePage extends StatefulWidget {
// //   const HomePage({Key? key}) : super(key: key);

// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   DataController dataController = Get.put(DataController());
// //   @override
// //   void initState() {
// //     getData();
// //     super.initState();
// //   }

// //   getData() async {
// //     DataController dataController = Get.put(DataController());
// //     var response = await http.Client().get(Uri.parse(
// //         'https://en.wikipedia.org/wiki/List_of_universities_in_Pakistan'));
// //     dom.Document document = parser.parse(response.body);

// //     for (int k = 0; k <= 3; k++) {
// //       var element = document.querySelectorAll('table>tbody')[k];
// //       var data = element.querySelectorAll('tr');
// //       for (int i = 1; i < data.length; i++) {
// //         dataController.addName(data[i].children[0].text.toString().trim());
// //         dataController.addLocation(data[i].children[1].text.toString().trim());
// //       }
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return GetBuilder<DataController>(
// //         builder: (_) => Scaffold(
// //               appBar: AppBar(
// //                 title: Text('Data Scrap'),
// //               ),
// //               body: SafeArea(
// //                 child: ListView.builder(
// //                     shrinkWrap: true,
// //                     itemCount: dataController.name.length,
// //                     itemBuilder: (BuildContext context, int index) {
// //                       return Card(
// //                         child: Padding(
// //                           padding: EdgeInsets.all(10),
// //                           child: Row(
// //                             children: [
// //                               Expanded(
// //                                   child: Text(
// //                                 dataController.name[index].toString().trim(),
// //                                 style: const TextStyle(
// //                                     fontSize: 20,
// //                                     color: Colors.black,
// //                                     fontWeight: FontWeight.bold),
// //                               )),
// //                               Text(
// //                                 dataController.location[index]
// //                                     .toString()
// //                                     .trim(),
// //                                 style: const TextStyle(
// //                                     fontSize: 15, color: Colors.blueGrey),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       );
// //                     }),
// //               ),
// //             ));
// //   }
// // }

// import 'package:http/http.dart';

// Future<String?> getProfileImageUrl(String username) async {
//   // Download the content of the site
//   http.Response response = await http.get("https://www.tiktok.com/@$username");
//   String html = response.body;

//   // The html contains the following string exactly one time.
//   // After this specific string the url of the profile picture starts.
//   String needle = '<meta property="og:image" content="';
//   int index = html.indexOf(needle);

//   // The result of indexOf() equals -1 if the needle didn't occurred in the html.
//   // In that case the received username may be invalid.
//   if (index == -1) return null;

//   // Remove all characters up to the start of the text snippet that we want.
//   html = html.substring(html.indexOf(needle) + needle.length);

//   // return all chars until the first occurrence of '"'
//   return html.substring(0, html.indexOf('"'));
// }

// Scaffold(
//   appBar: AppBar(
//     title: const Text(
//       'THE WALL',
//       style: TextStyle(color: Colors.white),
//     ),
//     backgroundColor: Colors.blueAccent,
//   ),
//   body: const Center(
//       child: Text(
//     'A drawer is an invisible side screen.',
//     style: TextStyle(fontSize: 20.0),
//   )),
//   drawer: Expanded(
//     child: Drawer(
//       child: ListView(
//         padding: const EdgeInsets.all(0),
//         children: [
//           const DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.lightBlueAccent,
//             ), //BoxDecoration
//             child: UserAccountsDrawerHeader(
//               decoration: BoxDecoration(color: Colors.white),
//               accountName: Text(
//                 "Abhishek Mishra",
//                 style: TextStyle(fontSize: 18),
//               ),
//               accountEmail: Text("abhishekm977@gmail.com"),
//               currentAccountPictureSize: Size.square(50),
//               currentAccountPicture: CircleAvatar(
//                 backgroundColor: Color.fromARGB(255, 165, 255, 137),
//                 child: Text(
//                   "A",
//                   style: TextStyle(fontSize: 30.0, color: Colors.blue),
//                 ), //Text
//               ), //circleAvatar
//             ), //UserAccountDrawerHeader
//           ), //DrawerHeader
//           ListTile(
//             leading: const Icon(Icons.person),
//             title: const Text(' My Profile '),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.book),
//             title: const Text(' My Course '),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.workspace_premium),
//             title: const Text(' Go Premium '),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.video_label),
//             title: const Text(' Saved Videos '),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.edit),
//             title: const Text(' Edit Profile '),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.logout),
//             title: const Text('LogOut'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//     ),
//   ), //Drawer
// );

// GET https://www.googleapis.com/youtube/v3/activities?part=snippet&channelId=UCpFwPWlKZD1lgpZ6oFMf5IA
// https://www.googleapis.com/youtube/v3/activities?part=snippet&channelId=UC_x5XG1OV2P6uZZ5FSM9Ttw&key=AIzaSyCrFpfPBPWHM3lLRSpdymVNbBM-vr4nu6g
