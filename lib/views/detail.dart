import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizz_app/models/category.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key, required this.category});

  final Category category;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  dynamic pageColor = Colors.white;
  int counter = 0;
  int correctAnswers = 0;

  buttonDynamic(bool buttonValue) {
    setState(() {
      correctAnswers += evaluateAnswer(widget.category.questions[counter].answer, buttonValue);
      if (isLastQuestion()) {
        Navigator.pushNamed(context, '/score', arguments: correctAnswers);
        return;
      } else {
        counter += 1;
        changeColorToDefault();
      }
    });
  }

  int evaluateAnswer(correctValue, userAnswer) {
    int value = correctValue == userAnswer ? 1 : 0;
    setColor(value);
    return value;
  }

  bool isLastQuestion() {
    return widget.category.questions.length - 1 == counter;
  }

  void setColor(value) {
    pageColor = value == 1 ? Colors.green : Colors.red;
  }

  void changeColorToDefault() {
    Future.delayed(
      Duration(seconds: 1),
      () => setState(() => pageColor = Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            child: Image.network(
              widget.category.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.all(20),
            child: Text(
              widget.category.questions[counter].question,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => buttonDynamic(true),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[900]),
                  child: const _buttonText(value: "TRUE")),
              const SizedBox(width: 40),
              ElevatedButton(
                  onPressed: () => buttonDynamic(false),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[900]),
                  child: const _buttonText(value: "FALSE")),
            ],
          ),
        ],
      ),
    );
  }
}

class _buttonText extends StatelessWidget {
  const _buttonText({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: const TextStyle(
        fontSize: 20,
      ),
    );
  }
}
