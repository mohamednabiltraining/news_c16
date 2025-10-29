import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

class CategoryModel{
  final String? title;
  final String? image;
  final String? id;

  CategoryModel({required this.image,required this.id,this.title});


  //
static List<CategoryModel> categories = [
  CategoryModel(image: AppAssets.general, id: 'general',title:"General"),
  CategoryModel(image: AppAssets.business, id: 'business',title: "Business"),
  CategoryModel(image: AppAssets.sport, id: 'sports',title: "Sports"),
  CategoryModel(image: AppAssets.health, id: 'health',title: "Health"),
  CategoryModel(image: AppAssets.entertainment, id: 'entertainment',title: "Entertainment"),
  CategoryModel(image: AppAssets.tech, id: 'tech',title: "Tech"),
  CategoryModel(image: AppAssets.science, id: 'science', title: "Science"),
];
}