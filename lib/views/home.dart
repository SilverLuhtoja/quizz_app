import 'package:flutter/material.dart';
import 'package:quizz_app/resources/categories_data.dart';
import 'package:quizz_app/widgets/category_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[700],
        title: Row(
          children: const [
            Icon(Icons.star, color: Colors.amber),
            Text("Quizz"),
            Icon(Icons.star, color: Colors.amber),
          ],
        ),
      ),
      body: Wrap(
          spacing: 20,
          children:
              categories.map((cat) => CategoryCard(category: cat)).toList()),
    );
  }
}
