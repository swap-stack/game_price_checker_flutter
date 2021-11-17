class Game {
  late String title;
  late String prices;
  late String discount;

  Game({required this.title, required this.prices, discount});

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
        title: json['title'],
        prices: json['prices'],
        discount: json['discount']);
  }
}
