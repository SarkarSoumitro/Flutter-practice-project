class CartItem {
  final String price;
  final String imagePath;
  final String name;
  final String color;
  final String size;

  CartItem(
      {required this.imagePath,
      required this.price,
      required this.name,
      required this.color,
      required this.size});
}
