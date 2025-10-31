import 'package:flutter/material.dart';
import 'package:news_c16/api/model/resonse/sources/Source.dart';
import 'package:news_c16/presentaion/newslist_details_screen/ArticlesListWidget.dart';
import 'package:news_c16/presentaion/newslist_details_screen/news_list_viewModel.dart';
import 'package:provider/provider.dart';

class NewsListView extends StatefulWidget {
  final Source source;
  const NewsListView({required this.source, Key? key}) : super(key: key);

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  late NewsListViewModel vm;

  @override
  void initState() {
    super.initState();
    vm = NewsListViewModel();
    vm.getArticlesBySourceId(widget.source.id ?? "");
  }

  @override
  void didUpdateWidget(covariant NewsListView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.source.id != widget.source.id) {
      vm.getArticlesBySourceId(widget.source.id ?? "");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: vm,
      child: Consumer<NewsListViewModel>(
        builder: (context, viewModel, child) {
          var screenState = viewModel.state;
          switch (screenState.state) {
            case ScreenState.initial:
            case ScreenState.Loading:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ScreenState.Error:
              return Center(
                child: Text(screenState.errorMessage ?? "Something went wrong"),
              );
            case ScreenState.Success:
              return ArticlesListWidget(screenState.articles ?? []);
          }
        },
      ),
    );
  }
}
