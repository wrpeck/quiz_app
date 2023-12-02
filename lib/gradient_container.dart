import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    this.body,
  });

  final Widget? body;

  @override
  Widget build(context) {
    final List<Color> themeColors = [
      const Color.fromARGB(255, 56, 22, 114),
      const Color.fromARGB(255, 39, 176, 142)
    ];
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: themeColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: body),
    );
  }
}
