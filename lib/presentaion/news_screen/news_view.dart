import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_c16/core/resources/widgets/custom_scaffold.dart';
import 'package:news_c16/data/models/article_model.dart';
import 'package:news_c16/presentaion/news_screen/widgets/news_card.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  // simulate apis (tab list )
  static List<String> tabs = [
    'Alahly',
    'Zamalek',
    'Dmc',
    'Cbc',
    'Bein',
    'Alahly',
    'Zamalek',
    'Dmc',
    'Cbc',
    'Bein',
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'sport',
      actions: [
        IconButton(onPressed: () {
          // todo navigate to search screen
        }, icon: Icon(Icons.search))
      ],
      body: DefaultTabController(
        length: tabs.length,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              dividerColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              unselectedLabelStyle: TextStyle(fontSize: 15),
              labelStyle: TextStyle(fontSize: 18),
              tabs: tabs.map((tab) => Tab(text: tab)).toList(),
            ),
            Expanded(
              child: TabBarView(
                children: tabs.map((e) {
                  var filterList = ArticleModel.articles
                      .where(
                        (element) =>
                            e.toLowerCase() == element.source?.toLowerCase(),
                      )
                      .toList();
                  return ListView.separated(
                    itemBuilder: (context, index) {
                      var article = filterList[index];
                      return NewsCard(articleModel: article);
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 16),
                    itemCount: filterList.length,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
