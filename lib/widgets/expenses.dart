import 'package:flutter/material.dart';

import '../data/expenses_data.dart';
import 'pie_chart.dart';

class ExpensesSection extends StatelessWidget {
  const ExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            "Expenses",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses.map((value) {
                    return Row(
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: pieColors[expenses.indexOf(value)],
                        ),
                        const SizedBox(width: 5),
                        Text(value["name"],
                            style: const TextStyle(fontSize: 12)),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
            const Expanded(flex: 6, child: PieChart()),
          ],
        ),
      ],
    );
  }
}
