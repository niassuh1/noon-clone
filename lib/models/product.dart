class Product {
  final String name;
  final String imageUrl;
  final double price;
  final double stars;
  final int customersRated;
  Product(
      {required this.name,
      required this.imageUrl,
      required this.price,
      required this.customersRated,
      required this.stars});
  String getCustomersRated() {
    List rateAmount = customersRated.toString().split('');
    if (rateAmount.length > 3) {
      double amnt = (customersRated.toDouble() / 1000);
      return amnt.toStringAsPrecision(2) + 'k';
    }
    return customersRated.toString();
  }
}

List<Product> products = [
  new Product(
      name:
          'Watch Series 3-42mm GPS Space Gray Aluminum Case with Sport Band Black',
      imageUrl:
          'https://z.nooncdn.com/products/tr:n-t_400/v1605898680/N19708704A_1.jpg',
      price: 849,
      customersRated: 2122,
      stars: 4.8),
  new Product(
      name: 'AirPods Pro Wireless Earphones White',
      imageUrl:
          'https://z.nooncdn.com/products/tr:n-t_400/v1612332491/N31748281A_1.jpg',
      price: 829,
      customersRated: 4212,
      stars: 4.9),
  new Product(
      name: 'PlayStation 5 Console (Disc Version)',
      imageUrl:
          'https://z.nooncdn.com/products/tr:n-t_400/v1610036835/N40633047A_1.jpg',
      price: 3134.9,
      customersRated: 35123,
      stars: 4.8),
  new Product(
      name: 'PlayStation 4 Slim 500GB Console - Jet Black',
      imageUrl:
          'https://z.nooncdn.com/products/tr:n-t_400/v1595490325/N11963549A_1.jpg',
      price: 1769,
      customersRated: 208,
      stars: 4.8),
];
