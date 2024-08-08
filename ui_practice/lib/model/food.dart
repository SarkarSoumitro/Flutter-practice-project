
class food {
  String name;
  String price;
  String imagePath;
  String rating;

  food({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.rating
});

  String get _getname => name;
  String get _geprice => price;
  String get _getimagePath => imagePath;
  String get _getrating => rating;


}