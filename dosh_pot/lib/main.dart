import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const DoshPot());
}

class DoshPot extends StatelessWidget {
  const DoshPot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DoshPot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}