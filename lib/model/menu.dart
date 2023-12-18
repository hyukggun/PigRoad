class Menu {
  final String name;
  final num price;
  final num starRate;
  final String? image;

  Menu({required this.name, this.price = 0, this.starRate = 1.0, this.image});

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      name: json['name'],
      price: json['price'],
      starRate: json['starRate'],
      image: json['image'],
    );
  }   
}