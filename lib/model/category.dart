import 'package:flutter/material.dart';
import 'package:portfolioapp/model/content.dart';

class Category {
  final String title;
  final Color color;
  final Image image;
  final Content content;

  const Category(this.title, this.color, this.image, this.content);
}