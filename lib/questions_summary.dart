import 'dart:ffi';

import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    Color? indexColor;
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: indexColor =
                        data['user_answer'] == data['correct_answer']
                            ? const Color.fromARGB(255, 129, 231, 133)
                            : const Color.fromARGB(255, 236, 149, 143),
                  ),
                  padding: const EdgeInsets.all(12),
                  child:
                      Text(((data['question_index'] as int) + 1).toString())),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      data['question'] as String,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data['user_answer'] as String,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 42, 11, 95),
                      ),
                    ),
                    Text(
                      data['correct_answer'] as String,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Color.fromARGB(179, 57, 255, 205),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
