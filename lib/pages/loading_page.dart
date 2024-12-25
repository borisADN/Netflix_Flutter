import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_app/pages/onboarding_page.dart';

class MyLoadingPage extends StatefulWidget {
  const MyLoadingPage({super.key, required this.title});

  final String title;

  @override
  State<MyLoadingPage> createState() => _MyLoadingPageState();
}

class _MyLoadingPageState extends State<MyLoadingPage> {

  @override

  /// Appel  lorsqu'un objet de type State est inséré  dans l'arbre des widgets.
  ///
  /// Cette fonction déclenche l'animation de chargement.
  @override
  void initState() {
    super.initState();
    loadAnimation();
  }
  /// Fonction qui charge l'animation de chargement pendant 5 secondes,
  /// puis appelle la fonction [onLoaded] lorsque l'animation est termin e.
Future<Timer> loadAnimation() async {
  return Timer(
    const Duration(seconds:5),
   onLoaded
  );
  
}


  onLoaded() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) =>  OnboardingPage(),
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
