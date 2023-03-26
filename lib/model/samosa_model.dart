import 'package:samosa_food_app/data/constants.dart';

class SamosaModel {
  String image;
  String title;
  String description;
  SamosaModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<SamosaModel> samosaList = [
  SamosaModel(
      image: 'assets/samosa1.png',
      title: 'Chinese Samosa',
      description: longText),
  SamosaModel(
      image: 'assets/samosa1.png',
      title: 'Indian Samosa',
      description: longText),
  SamosaModel(
      image: 'assets/samosa1.png',
      title: 'Pakistani Samosa',
      description: longText)
];
