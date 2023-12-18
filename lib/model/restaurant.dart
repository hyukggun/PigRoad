import 'package:pig_road/model/coordinate.dart';
import 'package:pig_road/model/korean_restaurants.dart';
import 'package:pig_road/model/menu.dart';
import 'package:pig_road/model/western_restaurants.dart';

class Restaurant {
  const Restaurant({
    required this.name,
    required this.imageURL,
    required this.menus,
    required this.coordinate,
  });

  final String name;
  final String imageURL;
  final List<Menu> menus;
  final Coordinate coordinate;

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      name: json['name'],
      imageURL: json['imageURL'],
      menus: json['menus'].map<Menu>((menu) => Menu.fromJson(menu)).toList(),
      coordinate: json.containsKey('coordinate') ? Coordinate.fromJson(json['coordinate']) : const Coordinate(32.331075, 126.58213),
    );
  }
}


class KoreanFoodsStore {
  const KoreanFoodsStore();

  List<Restaurant> get restaurants => koreanRestaurants;
}

class WesternFoodsStore {
  const WesternFoodsStore();

  List<Restaurant> get restaurants => westernRestaurants;
}