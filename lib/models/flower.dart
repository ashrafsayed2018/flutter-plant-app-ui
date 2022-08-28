class Flower {
  int id;
  String name;
  double price;
  double rating;
  int reviewCount;
  String image;
  String size;
  double height;
  String plant;
  int humidnity;

  Flower({
    required this.id,
    required this.name,
    required this.price,
    required this.rating,
    required this.reviewCount,
    required this.image,
    required this.size,
    required this.height,
    required this.plant,
    required this.humidnity,
  });

  static List<Flower> getAllFlowers() {
    return [
      Flower(
        id: 1,
        name: "Monestera",
        price: 39.00,
        image: "assets/images/2.png",
        rating: 4.8,
        reviewCount: 268,
        size: "Small",
        height: 12.6,
        plant: "Orchid",
        humidnity: 82,
      ),
      Flower(
        id: 2,
        name: "Ageratum",
        price: 49.00,
        image: "assets/images/3.png",
        rating: 4.7,
        reviewCount: 535,
        size: "Medium",
        height: 13.2,
        plant: "Gapir",
        humidnity: 92,
      ),
      Flower(
        id: 3,
        name: "Selurim",
        price: 59.00,
        image: "assets/images/1.png",
        rating: 4.9,
        reviewCount: 387,
        size: "Larg",
        height: 17.1,
        plant: "Torman",
        humidnity: 96,
      ),
    ];
  }
}
