class FoodsStore {
  final List<String> foods;

  FoodsStore({required this.foods });
}


class KoreanFoodsStore implements FoodsStore {
  @override
  final List<String> foods = [
    '밥',
    '미역국',
    '떡볶이',
    '된장국',
    '된장찌개',
    '고등어구이',
    '김치찌게',
  ];
  
  add(String food) {
    foods.add(food);
  }
}

class WesternFoodsStore implements FoodsStore {
  @override
  final List<String> foods = [
    '빵',
    '스테이크',
    '단호박 스프',
    '토마토 파스타',
  ];
}