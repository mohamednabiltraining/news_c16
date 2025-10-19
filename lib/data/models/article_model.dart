class ArticleModel {
  final String? image;
  final String? title;
  final String? author;
  final DateTime? dateTime;
  final String? description;
  final String? source;

  ArticleModel( {
    this.source,
    required this.dateTime,
    required this.image,
    required this.author,
    required this.description,
    required this.title,
  });

  static List<ArticleModel> articles = [
    ArticleModel(
      source: 'AlAhly',
       title: 'Mohamed Salah Leads Egypt to Stunning Victory',
      author: 'Abdalla Eldaly',
      dateTime: DateTime.now().subtract(const Duration(hours: 2)),
      description:
      'Egypt’s captain Mohamed Salah scored twice as Egypt defeated Nigeria 3-1 in the African qualifiers. Fans celebrated across the country after the team secured a spot in the next round.',
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHGgM--Pxbc_Amew--WTtAO3RYPLRF7eQ8cA&s',
    ),
    ArticleModel(
      title: 'Real Madrid Claim Another Champions League Title',
      author: 'James Thompson',
      source: 'AlAhly',
      dateTime: DateTime.now().subtract(const Duration(days: 1)),
      description:
      'Real Madrid secured their 15th Champions League title after a thrilling 2-1 victory against Manchester City in the final. Vinícius Júnior’s late goal sealed the win.',
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHGgM--Pxbc_Amew--WTtAO3RYPLRF7eQ8cA&s',
    ),
    ArticleModel(
      title: 'Ronaldo Scores Hat-Trick for Al Nassr',
      source: 'Alahly',
      author: 'Hanin Khaled',
      dateTime: DateTime.now().subtract(const Duration(days: 2)),
      description:
      'Cristiano Ronaldo once again proved his class by scoring a hat-trick in Al Nassr’s 4-0 win in the Saudi Pro League. The Portuguese star continues to break records.',
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHGgM--Pxbc_Amew--WTtAO3RYPLRF7eQ8cA&s',
    ),
    ArticleModel(
      title: 'Barcelona’s Youth Academy Produces Another Star',
      author: 'Laura Martinez',
      dateTime: DateTime.now().subtract(const Duration(days: 3)),
      description:
      '17-year-old striker Pablo Torres shined in his debut, scoring a brace for Barcelona. The La Masia academy continues to produce top talent for the first team.',
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHGgM--Pxbc_Amew--WTtAO3RYPLRF7eQ8cA&s',
    ),
    ArticleModel(
      title: 'Tennis Legend Novak Djokovic Wins 25th Grand Slam',
      author: 'Mark Jensen',
      dateTime: DateTime.now().subtract(const Duration(days: 5)),
      description:
      'Novak Djokovic made history by winning his 25th Grand Slam title after defeating Carlos Alcaraz in an epic five-set final at the US Open.',
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHGgM--Pxbc_Amew--WTtAO3RYPLRF7eQ8cA&s',
    ),
  ];
}
