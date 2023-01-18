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
      imageUrl: "../../assets/images/amendoim.png",
    ),
    Product(
      name: "baré",
      price: 3.5,
      imageUrl: "../../assets/bare.jpg",
    ),
    Product(
      name: "bis",
      price: 0.5,
      imageUrl: "../../assets/bis.jfif",
    ),
    Product(
      name: "biscoito mabel",
      price: 3.0,
      imageUrl: "../../assets/mabel.webp",
    ),
    Product(
      name: "biscoito spantoo",
      price: 3.0,
      imageUrl: "../../assets/spantoo.jfif",
    ),
    Product(
      name: "chocolate baton",
      price: 1.5,
      imageUrl: "../../assets/baton.webp",
    ),
    Product(
      name: "chocolate kitkat",
      price: 4.0,
      imageUrl: "../../assets/kitkat.jfif",
    ),
    Product(
      name: "coca cola",
      price: 3.5,
      imageUrl: "../../assets/coca.jfif",
    ),
    Product(
      name: "cup noodles",
      price: 6.5,
      imageUrl: "../../assets/cupnoodles.jpeg",
    ),
    Product(
      name: "energético monster",
      price: 8.5,
      imageUrl: "../../assets/images/monster.jpg",
    ),
    Product(
      name: "fanta",
      price: 3.5,
      imageUrl: "../../assets/images/fanta.jfif",
    ),
    Product(
      name: "fregells",
      price: 1.5,
      imageUrl: "../../assets/images/freegells.jfif",
    ),
    Product(
      name: "hersheys",
      price: 0.4,
      imageUrl: "../../assets/images/hersheys.jfif",
    ),
    Product(
      name: "paçoquinha",
      price: 0.75,
      imageUrl: "../../assets/images/paçoquinha.jfif",
    ),
    Product(
      name: "schweppes citrus",
      price: 4.0,
      imageUrl: "../../assets/images/schweppes.jpg",
    ),
    Product(
      name: "snacks yes",
      price: 1.5,
      imageUrl: "",
    ),
    Product(
      name: "toddynho",
      price: 2.5,
      imageUrl: "../../assets/images/toddynho.jpg",
    ),
    Product(
      name: "tuffit",
      price: 2.0,
      imageUrl: "../../assets/images/tuffit.png",
    )
  ];
}
