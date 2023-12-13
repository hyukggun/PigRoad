import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pig_road/model/restaurant.dart';
import 'package:pig_road/restaurant_card.dart';
import 'food_category.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class FoodCategoryPage extends StatefulWidget {
  const FoodCategoryPage({super.key, required this.category, this.restaurants = const <Restaurant>[] });

  final FoodCategory category;
  final List<Restaurant> restaurants;

  Future<List<Restaurant>> fetchRestaurants() async {
    final response = await http.get(Uri.parse('https://run.mocky.io/v3/63b4fcf5-f873-4cfb-8a13-c1d7a9d5fee6'));
    if (response.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(response.body);
      List<Restaurant> restaurants = body['restaurants'].map<Restaurant>((restaurant) => Restaurant.fromJson(restaurant)).toList();
      return restaurants;
    } else {
      print('Failed to load restaurants');
      return [];
    }
  }

  @override
  State<FoodCategoryPage> createState() => _FoodCategoryPageState();
}

class RestaurantService {
  Future<List<Restaurant>> fetchRestaurants() async {
    final response = await http.get(Uri.parse('https://run.mocky.io/v3/63b4fcf5-f873-4cfb-8a13-c1d7a9d5fee6'));
    if (response.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(response.body);
      List<Restaurant> restaurants = body['restaurants'].map<Restaurant>((restaurant) => Restaurant.fromJson(restaurant)).toList();
      return restaurants;
    } else {
      print('Failed to load restaurants');
      return [];
    }
  }
}


class _FoodCategoryPageState extends State<FoodCategoryPage> {

  @override
  void initState() {
    super.initState();
    widget.fetchRestaurants().then(
      (value) => setState(() {
        print(value);
      })
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.title),
      ),
      body: Column(
        children: widget.category.restaurantList.map((restaurant) {
          return RestaurantCard(restaurant: restaurant);
        }).toList(),
      ),
    );
  }
}
