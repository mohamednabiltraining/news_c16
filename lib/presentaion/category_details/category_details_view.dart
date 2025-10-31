import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_c16/api/ApiManager.dart';
import 'package:news_c16/data/models/category_model.dart';
import 'package:news_c16/presentaion/category_details/NewsSources.dart';
import 'package:news_c16/presentaion/category_details/category_details_viewModel.dart';
import 'package:provider/provider.dart';

class CategoryDetailsView extends StatelessWidget {
  CategoryModel category;
  CategoryDetailsViewModel vm = CategoryDetailsViewModel();

  CategoryDetailsView(this.category, {super.key}) {
    vm.getNewsSources(category.id ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => vm,
      child: Scaffold(
        body: Consumer<CategoryDetailsViewModel>(
          builder: (context, viewModel, child) {
            var screenState = viewModel.state;
            switch (screenState.state) {
              case ScreenState.initial:
              case ScreenState.Loading:
                {
                  return Center(child: CircularProgressIndicator());
                }
              case ScreenState.Error:
                {
                  return Center(
                    child: Text(
                      screenState.errorMessage ?? "Something went wrong",
                    ),
                  );
                }
              case ScreenState.Success:
                {
                  return NewsSourcesWidget(screenState.sources ?? []);
                }
            }
          },
        ),
      ),
    );
  }
}
