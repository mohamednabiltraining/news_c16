import 'package:flutter/foundation.dart';
import 'package:news_c16/api/ApiManager.dart';
import 'package:news_c16/api/model/resonse/sources/Source.dart';

// provider
class CategoryDetailsViewModel extends ChangeNotifier{
  // call api
  // save sources data
  // handle stat for view
  CategoryDetailsState state = CategoryDetailsState();

  void getNewsSources(String categoryId)async{
    // call Api
   try {
     _sendState(
         CategoryDetailsState(
         state: ScreenState.Loading,
         loadingMessage: "please Wait...")
     );
     var response = await ApiManager.getInstance()
         .getNewsSources(categoryId);
     if (response.status == 'ok') {
       _sendState(CategoryDetailsState(
         state: ScreenState.Success,
         sources: response.sources,
       )
       );
     } else {
       _sendState(CategoryDetailsState(
         state: ScreenState.Error,
         errorMessage: response.message,
       ));
     }
   }catch(e){
     _sendState(CategoryDetailsState(
       state: ScreenState.Error,
       errorMessage: e.toString(),
     ));
   }
  }

  void _sendState(CategoryDetailsState newState){
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
class CategoryDetailsState{
  ScreenState state = ScreenState.initial;

  List<Source>? sources;

  String? loadingMessage;
  // incase of errpr
  String? errorMessage;

  CategoryDetailsState({
    this.state = ScreenState.initial,
    this.sources,
    this.loadingMessage,
    this.errorMessage,
});
}