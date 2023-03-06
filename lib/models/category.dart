import 'package:quizz_app/models/question.dart';

class Category {
  String name;
  String imageUrl;
  late List<Question> questions;

  Category({required this.name, required this.imageUrl, required this.questions});
}
