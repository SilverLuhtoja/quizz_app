import 'package:flutter/material.dart';
import 'package:quizz_app/views/home.dart';
import 'package:quizz_app/views/score.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/score': (context) => ScoreView(),
    },
  ));
}
