import 'package:flutter/material.dart';
import 'package:quizz_app/models/category.dart';
import 'package:quizz_app/views/detail.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({super.key, required this.category});

  final Category category;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailView(category: widget.category),
          )),
      child: Container(
        width: 160,
        height: 160,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(widget.category.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Text(
          widget.category.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            shadows: [Shadow(color: Colors.black, blurRadius: 50)],
          ),
        )),
      ),
    );
  }
}
