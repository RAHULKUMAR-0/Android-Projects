import 'package:flutter/material.dart';
import 'package:quiz_app/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 330,
      width: 370,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data);
            // typecasting converting value of objects to int, as object can have value of the key of any type
            // also we convert the entire result into string as Text Widget only reads string
          }).toList(),
        ),
      ),
    ); // to convert list of map into list of widgets we use 'map()' method and .toList() in the end
  }
}
