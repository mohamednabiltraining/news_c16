import 'package:flutter/material.dart';
import 'package:news_c16/core/resources/widgets/custom_scaffold.dart';
import 'package:news_c16/data/models/category_model.dart';
import 'package:news_c16/presentaion/category_screen/widgets/category_card.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Home',
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          const Row(),
          Text('Good Morning\nHere is Some News For You',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
          Expanded(
            child: ListView.separated(itemBuilder: (context, index) {
             var category =  CategoryModel.categories[index];
            return CategoryCard(model: category, index: index,);
            }, separatorBuilder: (context, index) => SizedBox(height: 10,), itemCount: CategoryModel.categories.length),
          )
        ]),
      ),
    );
  }
}
