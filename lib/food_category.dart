import 'package:pig_road/model/korean_restaurants.dart';
import 'package:pig_road/model/western_restaurants.dart';

import 'model/restaurant.dart';

enum FoodCategory {
  korean(title: '한식'),
  western(title: '양식');

  const FoodCategory({
    required this.title
  });

  final String title;

  List<Restaurant> get restaurantList {
    switch (this) {
      case FoodCategory.korean:
        return koreanRestaurants;
      case FoodCategory.western:
        return westernRestaurants;
    }
  }
}

enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}