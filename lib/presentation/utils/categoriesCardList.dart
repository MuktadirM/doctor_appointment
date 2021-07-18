import 'package:doctor_appointment/presentation/models/categoriesCardModel.dart';
import 'package:flutter/material.dart';

List<CategoriesCard> categoriesLsit = [
  CategoriesCard(
    baseColor: Colors.blue.shade200,
    shadowColor: Colors.blue.shade100,
    iconData: Icons.favorite_border,
    iconColor: Colors.blue,
    cardTitle: "Cardiac",
  ),
  CategoriesCard(
    baseColor: Colors.red.shade200,
    shadowColor: Colors.red.shade100,
    iconData: Icons.psychology,
    iconColor: Colors.red,
    cardTitle: "Psychiatrists",
  ),
  CategoriesCard(
    baseColor: Colors.green.shade200,
    shadowColor: Colors.green.shade100,
    iconData: Icons.tag_faces,
    iconColor: Colors.green,
    cardTitle: "Dental",
  ),
  CategoriesCard(
    baseColor: Colors.orange.shade200,
    shadowColor: Colors.orange.shade100,
    iconData: Icons.family_restroom,
    iconColor: Colors.orange,
    cardTitle: "Family",
  ),
];
