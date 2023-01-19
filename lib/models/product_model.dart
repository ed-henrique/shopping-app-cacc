class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  static const List<Product> products = [
    Product(
      name: "amendoim",
      price: 1.0,
      imageUrl: "assets/images/amendoim.jpg",
    ),
    Product(
      name: "baré",
      price: 3.5,
      imageUrl: "assets/images/bare.jpg",
    ),
    Product(
      name: "bis",
      price: 0.5,
      imageUrl: "assets/images/bis.jfif",
    ),
    Product(
      name: "biscoito mabel",
      price: 3.0,
      imageUrl: "assets/images/mabel.webp",
    ),
    Product(
      name: "biscoito spantoo",
      price: 3.0,
      imageUrl: "assets/images/spantoo.jfif",
    ),
    Product(
      name: "chocolate baton",
      price: 1.5,
      imageUrl: "assets/images/baton.webp",
    ),
    Product(
      name: "chocolate kitkat",
      price: 4.0,
      imageUrl: "assets/images/kitkat.jfif",
    ),
    Product(
      name: "coca cola",
      price: 3.5,
      imageUrl: "assets/images/coca.jfif",
    ),
    Product(
      name: "cup noodles",
      price: 6.5,
      imageUrl: "assets/images/cupnoodles.jpeg",
    ),
    Product(
      name: "energético monster",
      price: 8.5,
      imageUrl: "assets/images/monster.jpg",
    ),
    Product(
      name: "fanta",
      price: 3.5,
      imageUrl: "assets/images/fanta.jfif",
    ),
    Product(
      name: "fregells",
      price: 1.5,
      imageUrl: "assets/images/freegells.jfif",
    ),
    Product(
      name: "hersheys",
      price: 0.4,
      imageUrl: "assets/images/hersheys.jfif",
    ),
    Product(
      name: "paçoquinha",
      price: 0.75,
      imageUrl: "assets/images/paçoquinha.jfif",
    ),
    Product(
      name: "schweppes citrus",
      price: 4.0,
      imageUrl: "assets/images/schweppes.jpg",
    ),
    Product(
      name: "snacks yes",
      price: 1.5,
      imageUrl: "assets/images/torcida.jpg",
    ),
    Product(
      name: "toddynho",
      price: 2.5,
      imageUrl: "assets/images/toddynho.jpg",
    ),
    Product(
      name: "tuffit",
      price: 2.0,
      imageUrl: "assets/images/tuffit.png",
    )
  ];
}
