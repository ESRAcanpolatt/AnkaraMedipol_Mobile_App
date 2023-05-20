import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/text_span.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String text;


  final String imageUrl;
  final List<String> ingredients;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;


  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.text,
    required this.imageUrl,
    required this.ingredients,
    required this.duration,
    required this.complexity,
    required this.affordability,



  });


}
