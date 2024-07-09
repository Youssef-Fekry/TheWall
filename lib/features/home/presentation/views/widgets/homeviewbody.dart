import 'package:flutter/material.dart';
import 'package:thewall/features/home/presentation/views/widgets/appslistview.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'THE WALL',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Appslistview());
  }
}
