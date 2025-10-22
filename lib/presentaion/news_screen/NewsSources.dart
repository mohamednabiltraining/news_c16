import 'package:flutter/material.dart';
import 'package:news_c16/api/ApiManager.dart';
import 'package:news_c16/api/model/resonse/sources/Source.dart';
import 'package:news_c16/presentaion/news_screen/ArticlesListWidget.dart';

class NewsSourcesWidget extends StatefulWidget {
  List<Source> tabs;
  NewsSourcesWidget(this.tabs,{super.key});

  @override
  State<NewsSourcesWidget> createState() => _NewsSourcesWidgetState();
}

class _NewsSourcesWidgetState extends State<NewsSourcesWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.tabs.length,
      child: Column(
        children: [
          TabBar(
            onTap: (index){
              setState(() {
                selectedIndex = index;
              });
            },
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            dividerColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory,
            unselectedLabelStyle: TextStyle(fontSize: 15),
            labelStyle: TextStyle(fontSize: 18),
            tabs: widget.tabs.map((source) => Tab(text: source.name)).toList(),
          ),
          Expanded(
            child: FutureBuilder(future:ApiManager.getInstance().getArticles(
                widget.tabs[selectedIndex].id ??""
              ), builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                return Center(child: CircularProgressIndicator(),);
              }
              if(snapshot.hasError){
                return Center(child: Text("Something went wrong"),);
              }
              var response = snapshot.data;
              return ArticlesListWidget(response?.articles ?? []);

                },)
          ),
        ],
      ),
    );
  }
}
