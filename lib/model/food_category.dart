enum FoodCategory {
  korean,
  western,
  chinese,
  japanese,
  fastfood,
  cafe,
  dessert,
  etc;

  String get title {
    switch (this) {
      case FoodCategory.korean:
        return '한식';
      case FoodCategory.western:
        return '양식';
      case FoodCategory.chinese:
        return '중식';
      case FoodCategory.japanese:
        return '일식';
      case FoodCategory.fastfood:
        return '패스트푸드';
      case FoodCategory.cafe:
        return '카페';
      case FoodCategory.dessert:
        return '디저트';
      case FoodCategory.etc:
        return '기타';
    }
  }

  String get imageURL {
    switch (this) {
      case FoodCategory.korean:
        return 'assets/korean.png';
      case FoodCategory.western:
        return 'assets/western.png';
      case FoodCategory.chinese:
        return 'assets/chinese.png';
      case FoodCategory.japanese:
        return 'assets/japanese.png';
      case FoodCategory.fastfood:
        return 'assets/fastfood.png';
      case FoodCategory.cafe:
        return 'assets/cafe.png';
      case FoodCategory.dessert:
        return 'assets/dessert.png';
      case FoodCategory.etc:
        return 'assets/etc.png';
    }
  }
}