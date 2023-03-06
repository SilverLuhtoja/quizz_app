import 'package:quizz_app/models/category.dart';
import 'package:quizz_app/resources/questions_data.dart';

String gods_image = 'https://images.pexels.com/photos/13634040/pexels-photo-13634040.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
String games_image = 'https://images.pexels.com/photos/3165335/pexels-photo-3165335.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
String movies_image = 'https://images.pexels.com/photos/33129/popcorn-movie-party-entertainment.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
String varia_image = 'https://images.pexels.com/photos/220201/pexels-photo-220201.jpeg?auto=compress&cs=tinysrgb&w=400';
String codingMania_image = 'https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&w=1600';

List<Category> categories = [
  Category(
      name: 'gods',
      imageUrl: gods_image,
      questions: gods_questions
  ),
    Category(
        name: 'games',
        imageUrl: games_image,
        questions: games_questions
    ),
    Category(
        name: 'movies',
        imageUrl: movies_image,
        questions: movies_questions
    ),
    Category(
        name: 'varia',
        imageUrl: varia_image,
        questions: varia_questions
    ),
    Category(
        name: 'codingMania',
        imageUrl: codingMania_image,
        questions: codingMania_questions
    ),
];
