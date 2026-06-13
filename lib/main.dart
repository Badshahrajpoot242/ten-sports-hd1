import 'package:flutter/material.dart';

void main() {
  runApp(const TenSportsApp());
}

class TenSportsApp extends StatelessWidget {
  const TenSportsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TEN Sports HD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TEN Sports HD'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          menuButton(context, "Cricket"),
          menuButton(context, "Football"),
          menuButton(context, "Tennis"),
          menuButton(context, "Live TV"),
        ],
      ),
    );
  }

  Widget menuButton(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("$title clicked")),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
