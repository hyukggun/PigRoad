import 'package:flutter/material.dart';
import 'package:pig_road/model/food_category.dart';
import 'package:pig_road/page/food_category/food_category_page.dart';

class FoodCategoryCard extends StatelessWidget {
  final FoodCategory category;

  const FoodCategoryCard({Key? key, this.category = FoodCategory.korean})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => FoodCategoryPage(category: category))
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(125),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              category.imageURL,
              width: 50,
              height: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              category.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
