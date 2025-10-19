import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

import 'package:news_c16/core/resources/app_const/app_assest.dart';

class CategoryModel{
  final String? image;
  final String? id;

  CategoryModel({required this.image,required this.id});


  //
static List<CategoryModel> categories = [
  CategoryModel(image: AppAssets.general, id: '1'),
  CategoryModel(image: AppAssets.business, id: '1'),
  CategoryModel(image: AppAssets.entertainment, id: '1'),
  CategoryModel(image: AppAssets.health, id: '1'),
  CategoryModel(image: AppAssets.science, id: '1'),
  CategoryModel(image: AppAssets.tech, id: '1'),
  CategoryModel(image: AppAssets.sport, id: '1'),
];
}