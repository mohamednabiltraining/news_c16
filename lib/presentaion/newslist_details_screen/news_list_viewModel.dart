import 'package:flutter/material.dart';
import 'package:news_c16/api/ApiManager.dart';
import 'package:news_c16/api/model/resonse/articles/Articles.dart';

class NewsListViewModel extends ChangeNotifier{
  // call api
  // save sources data
  // handle stat for view
  NewsListState state = NewsListState();

  void getArticlesBySourceId(String sourceId)async{
    // call Api
    try {
      _sendState(
          NewsListState(
              state: ScreenState.Loading,
              loadingMessage: "please Wait...")
      );
      var response = await ApiManager.getInstance()
          .getArticles(sourceId);
      if (response.status == 'ok') {
        _sendState(NewsListState(
          state: ScreenState.Success,
          articles: response.articles,
        )
        );
      } else {
        _sendState(NewsListState(
          state: ScreenState.Error,
          errorMessage: response.message,
        ));
      }
    }catch(e){
      _sendState(NewsListState(
        state: ScreenState.Error,
        errorMessage: e.toString(),
      ));
    }
  }

  void _sendState(NewsListState newState){
    state = newState;
    notifyListeners();
  }
}
enum ScreenState{
  initial,
  Loading,
  Success,
  Error
}
class NewsListState{
  ScreenState state = ScreenState.initial;

  List<Article>? articles;

  String? loadingMessage;
  // incase of errpr
  String? errorMessage;

  NewsListState({
    this.state = ScreenState.initial,
    this.articles,
    this.loadingMessage,
    this.errorMessage,
  });
}