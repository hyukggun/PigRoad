import 'package:flutter/material.dart';
import 'food_category.dart';

class FoodCategoryPage extends StatefulWidget {
  const FoodCategoryPage({super.key, required this.category});

  final FoodCategory category;

  @override
  State<FoodCategoryPage> createState() => _FoodCategoryPageState();
}

class _FoodCategoryPageState extends State<FoodCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.title),
      ),
      body: Column(
        children: widget.category.store.foods.map((e) {
          return SizedBox(
            height: 50,
            width: double.infinity,
            child: Card(
                child: Center(
                    child: Text('food name is $e'),
                )
            ),
          );
        }).toList(),
      ),
    );
  }
}
