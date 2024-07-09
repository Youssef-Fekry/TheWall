import 'package:flutter/material.dart';
import 'package:thewall/features/home/presentation/views/widgets/homeviewbody.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Homeviewbody(),
    );
  }
}
