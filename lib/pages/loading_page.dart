import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_app/pages/home_page.dart';

class MyLoadingPage extends StatefulWidget {
  const MyLoadingPage({super.key, required this.title});

  final String title;

  @override
  State<MyLoadingPage> createState() => _MyLoadingPageState();
}

class _MyLoadingPageState extends State<MyLoadingPage> {

  @override
  void initState() {
    super.initState();
    loadAnimation();
  }

Future<Timer> loadAnimation() async {
  return Timer(
    const Duration(seconds:5),
   onLoaded
  );
  
}


  onLoaded() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const MyHomePage(title: 'Netflix App'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset(
          'assets/lotties/netflix_loading.json',
          repeat: false,
        ),
      ),
    );
  }
}
