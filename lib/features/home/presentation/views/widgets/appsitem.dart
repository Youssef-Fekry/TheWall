import 'package:flutter/material.dart';

class AppItem extends StatelessWidget {
  const AppItem(
      {super.key, required this.img, required this.text, required this.onTap});

  final String img;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 80,
          child: GestureDetector(
              onTap: onTap, child: Image.asset(img, fit: BoxFit.fill)),
        ),
        const SizedBox(height: 5),
        Text(text)
      ],
    );
  }
}
