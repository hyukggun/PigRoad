import 'package:flutter/material.dart';
import 'package:pig_road/model/restaurant.dart';

class RestaurantCard extends StatefulWidget {
  const RestaurantCard({super.key, required this.restaurant});

  final Restaurant restaurant;
  String get restaurantImageURL => restaurant.imageURL;

  @override
  State<RestaurantCard> createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
// fix the error by adding the following snippet
              backgroundImage: NetworkImage(widget.restaurantImageURL),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.restaurant.name,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ...widget.restaurant.menus.map ((menu) {
                  return Text(
                    menu.name,
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  );
                }).toList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
