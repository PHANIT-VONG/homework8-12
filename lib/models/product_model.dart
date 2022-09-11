class ProductModel {
  final int id;
  final String name;
  final double price;
  final String imageUrl;
  final double rate;
  final double discount;

  ProductModel(
    this.id,
    this.name,
    this.price,
    this.imageUrl,
    this.rate,
    this.discount,
  );

  static List<ProductModel> productList = [
    ProductModel(
        1,
        'Green-tropical-palm',
        100.0,
        'https://img.freepik.com/free-vector/white-product-podium-with-green-tropical-palm-leaves-golden-round-arch-green-wall_87521-3023.jpg',
        10.0,
        20.0),
    ProductModel(
        2,
        'Canon',
        250.0,
        'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-math-90946.jpg&fm=jpg',
        15.0,
        50.0),
    ProductModel(
        3,
        'Green-tropical-palm',
        350.0,
        'https://img.freepik.com/free-vector/white-product-podium-with-green-tropical-palm-leaves-golden-round-arch-green-wall_87521-3023.jpg',
        10.0,
        20.0),
    ProductModel(
        4,
        'Canon',
        230.0,
        'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-math-90946.jpg&fm=jpg',
        20.0,
        20.0),
    ProductModel(
        5,
        'Green-tropical-palm',
        500.0,
        'https://img.freepik.com/free-vector/white-product-podium-with-green-tropical-palm-leaves-golden-round-arch-green-wall_87521-3023.jpg',
        10.0,
        30.0),
    ProductModel(
        6,
        'Canon',
        150.0,
        'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-math-90946.jpg&fm=jpg',
        20.0,
        20.0),
  ];
}
