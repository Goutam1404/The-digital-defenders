import 'dart:math';
import 'package:flutter/material.dart';
import 'package:practice/widgets/custom_appBar.dart';
import 'package:practice/widgets/CustomCarouel.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // const HomeScreen({super.key});
  int qIndex = 0;

  getRandomQuote() {
    Random random = Random();
    setState(() {
      qIndex = random.nextInt(5);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getRandomQuote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppbar(
                  quoteIndex: qIndex,
                  onTap: () {
                    getRandomQuote();
                  }),
              CustomCarouel(),
            ],
          ),
        ),
      ),
    );
  }
}
