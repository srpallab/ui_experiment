import 'package:flutter/material.dart';

import 'core/colors.dart';
import 'widgets/cards_section.dart';
import 'widgets/expenses.dart';
import 'widgets/headers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: const Column(
        children: [
          SizedBox(height: 20),
          SizedBox(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardsSection()),
          Expanded(child: ExpensesSection()),
        ],
      ),
    );
  }
}
