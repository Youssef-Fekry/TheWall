import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thewall/features/home/presentation/views/widgets/appsitem.dart';

class Appslistview extends StatelessWidget {
  const Appslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
          AppItem(
            img: 'images/facebook.webp',
            text: 'FaceBook',
            onTap: () {},
          ),
          AppItem(
            img: 'images/insta.webp',
            text: 'Instagram',
            onTap: () {},
          ),
          AppItem(
            img: 'images/tiktok.png',
            text: 'TikTok',
            onTap: () {},
          ),
          AppItem(
            img: 'images/xlogo.jpeg',
            text: 'X',
            onTap: () {},
          ),
          AppItem(
            img: 'images/youtube.png',
            text: 'Youtube',
            onTap: () {
              GoRouter.of(context).push('/youtubeView');
            },
          ),
        ]);
  }
}

// curl -X GET -H "Authorization: Bearer AAAAAAAAAAAAAAAAAAAAAIyougEAAAAAivMmJUdk04Tc%2BPpGYvsRcymLYIU%3D5aGs9OTJ0BKa9DdQTFPqQEPTm0WQhVuwAl4ENjWPKxmjk4EwaR" "https://api.twitter.com/2/users/:1808417196630032384"
// Bearer Token: AAAAAAAAAAAAAAAAAAAAAIyougEAAAAAivMmJUdk04Tc%2BPpGYvsRcymLYIU%3D5aGs9OTJ0BKa9DdQTFPqQEPTm0WQhVuwAl4ENjWPKxmjk4EwaR
// Access Token: 1808417196630032384-zhbugiByDI8zTevOlYhJ632poylnls
// Access Token Secret: p5MwaACmu5AqMSaMeHnnunv1gJJfsXR2G7oSkBhMlPn6J
// API Key: CPeB0NyY5ikJCrKkZPdTK6UmK
// API Key Secret: w4wkIVDGf9mgjICootdzHO11kYdhM4ZoyUahVkloTyIiUaxr5u
// Client ID: dURiM1R1SnluUXhkek9mYUpTLUY6MTpjaQ
//Client Secret: 7cl1YaEM4Wb7iloJx6dvxttzYNQkgFDA95YI_a8MGEIb1QC6c2
// curl -X GET \
//   'https://graph.instagram.com/v20.0/10218560180051171?fields=id,username&access_token=2d354ade29f6065f4a68800709dec797'
// curl "https://api.twitter.com/2/users/by/username/$youssef.fekry.50" -H "Authorization: Bearer 1808417196630032384-zhbugiByDI8zTevOlYhJ632poylnls"
