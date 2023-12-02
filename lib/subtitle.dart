import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({super.key, required this.content});

  final String content;

  @override
  Widget build(context) {
    return Text(
      content,
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 24,
      ),
    );
  }
}
