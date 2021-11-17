import 'dart:convert';

import 'package:game_price_checker/models/game.dart';
import 'networking.dart';

class GameModel {
  Future<List<Game>> getGameItems() async {
    var url = "https://game-scrape-api.herokuapp.com/items_prices/";
    var gameItems = await NetworkHelper(url).getData();
    var data = jsonDecode(gameItems)['message'];

    return data
        .map<Game>((e) => Game.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
