import 'package:flutter/material.dart';
import 'package:news_c16/data/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.model, required this.index});
  final CategoryModel model;
  final int index ;

  @override
  Widget build(BuildContext context) {
    return Stack(
       children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(model.image??'')),
        Positioned(
            bottom: 10,
            right:index.isEven ? 10 : null,
            left: index.isOdd ? 10 : null,
            child: Container(
                decoration: BoxDecoration(

                ),
                child: Text('View All ',style:  TextStyle(fontSize: 25),)))
      ],
    );
  }
}
