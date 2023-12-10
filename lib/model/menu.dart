class Menu {
  final String name;
  final int price;
  final double starRate;

  const Menu(this.name, this.price, this.starRate);
}

class _MenuImpl extends Menu {
  _MenuImpl(super.name, super.price, super.starRate);
}
