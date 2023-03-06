import 'package:quizz_app/models/question.dart';

extension StringExtension on String {
    String capitalize() {
        return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
    }
}

enum Origin {
    norse,
    creek,
    roman,
    egypt,
    japan
}

extension OriginExtension on Origin{
    String print() {
        return "${this.name[0].toUpperCase()}${this.name.substring(1).toLowerCase()} Mythology";
    }
}

List<Question> gods_questions = [
    Question("In ${Origin.norse.print()} God < Loki > has been characterized as cunning trickster ?", true),
    Question("In ${Origin.creek.print()} Goddess < Aphrodite > was seen as goddess of war ?", false), // Goddess of Beauty and Love
    Question("In ${Origin.creek.print()} God < Ares > was god of war and courage ?", true),
    Question("In ${Origin.roman.print()} God < Cupid > shooting an arrow would have inspired love or passion in his victim ?", true),
    Question("In ${Origin.egypt.print()} God < Set > was god of peace and riches ?", false), // god of war, chaos and storms
    Question("In ${Origin.norse.print()} God < Thor > weapon was hammer and it's name was Njasniar ?", false), // Mjollnir
    Question("In ${Origin.norse.print()} God < Poseidon > weapon was a spear ?", false), // Trident
    Question("In ${Origin.egypt.print()} God < RA > was a god of sun ?", true),
    Question("Throughout recorded history, there have been anywhere from 8,000–12,000 gods who have been worshiped ?", true),
    Question("There is 8 deadly sins in bible : lust, gluttony, greed, laziness, wrath, envy, pride, rudeness ?", false ), // seven , rudeness
];

List<Question> games_questions = [
    Question("There has been 7 release of GTA ?", true),
    Question("In the game Dont Starve there is character called Winston ?", false),// Wilson
    Question("There has been game simulating a duck ?", true),
    Question("In the game WarCraft the humans fought against hobbits ?", false), // undead, orcs
    Question("Fallout franchise has made by Ubisoft ?", false), // Bethesda
    Question("Steam is the most popular video game digital distribution service ?", true),
    Question("In the game PlanetSide2 the largest battle has been between 1000 players ?", true),
    Question("In the game League Of Legends the champion pool is over 160 ?", true),
    Question("First video game was super Mario ?", false), // simple tennis game
    Question("PokéMon is the largest video game franchise ?", true),
];

List<Question> varia_questions = [
    Question("In school, Albert Einstein failed most of the subjects, except for physics and math ?", true),
    Question("The first song ever sung in the space was “Happy Birthday.” ?", true),
    Question("Bill Gates is the founder of Amazon ?", false),
    Question("The first product with a bar code was chewing gum ?", true),
    Question("Quidditch is the most popular sport among witches and wizards in “Harry Potter” ?", true),
    Question("Machu Picchu is an abandoned Incan citadel located in Chile ?", false),
    Question("Black is the most commonly used colour in all national flags around the world. ?", false),
    Question("The capital of Australia is Sydney ?", false),
    Question("AB- is the rarest type of blood in humans ?", true),
    Question("A cube has 16 straight edges in total ?", false),
];

List<Question> movies_questions = [
    Question("In Avatar, natives had light green skin color ?", false), // blue
    Question("Darth Vader have said 'Luke, I am your father.' ?", false), // “No, I am your father.”
    Question("Snow White and the Seven Dwarfs was the first feature-length animated movie ever released ?", true),
    Question("In The Matrix, does Neo take the blue pill ?", false), // red
    Question("Nekatozi Plaza is the name of the skyscraper in Die Hard ?", false), // Nakatomi
    Question("Freddy Krueger was from Elm Street ?", true),
    Question("Harry Potter was in house Rowena Ravenclaw ?", false),//Godric Gryffindor
    Question("Tom Cruise is main character of 'Impossible Mission' ?", false), //Mission: Impossible
    Question("It took three years to build Titanic ?", true),
    Question("Spider-Man's real name is Peter Parker ?", true),
];


List<Question> codingMania_questions = [
    Question("HTML: <td> tag is used to define a standard cell inside a table ?", true),
    Question("HTML: <!DOC> must be included as the first item in an HTML ?", false), //<!DOCTYPE>
    Question("JAVASCRIPT: Arrays element is used to store and manipulate text usually in multiples ?", true),
    Question("JAVASCRIPT: statement > close; < is used to exit or end a loop? ?", false), // break
    Question("CSS: Padding is the CSS property that sets the size of the whitespace outside the borders of the content ?",  false), // margin
    Question("CSS: color property > rgb < is used to set color and alpha(opacity) ?", false), // rgba
    Question("SQL: > LIKE < is the type of operator that is used to choose multiple values within a set range ?", false), // BETWEEN
    Question("HTTP headers are used to pass additional context and metadata about the request or response ?", true),
    Question("SQL stands for Structured Query Language ?", true),
    Question("HTTP stands for Hypertext Protocol ?", false), //Hypertext Transfer Protocol
];
