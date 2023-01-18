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
      imageUrl: "assets/images/amendoim.png",
    ),
    Product(
      name: "baré",
      price: 3.5,
      imageUrl: "assets/bare.jpg",
    ),
    Product(
      name: "bis",
      price: 0.5,
      imageUrl: "assets/bis.jfif",
    ),
    Product(
      name: "biscoito mabel",
      price: 3.0,
      imageUrl: "assets/mabel.webp",
    ),
    Product(
      name: "biscoito spantoo",
      price: 3.0,
      imageUrl: "assets/spantoo.jfif",
    ),
    Product(
      name: "chocolate baton",
      price: 1.5,
      imageUrl: "assets/baton.webp",
    ),
    Product(
      name: "chocolate kitkat",
      price: 4.0,
      imageUrl: "assets/kitkat.jfif",
    ),
    Product(
      name: "coca cola",
      price: 3.5,
      imageUrl: "assets/coca.jfif",
    ),
    Product(
      name: "cup noodles",
      price: 6.5,
      imageUrl: "assets/cupnoodles.jpeg",
    ),
    Product(
      name: "energético monster",
      price: 8.5,
      imageUrl: "",
    ),
    Product(
      name: "fanta",
      price: 3.5,
      imageUrl: "",
    ),
    Product(
      name: "fregells",
      price: 1.5,
      imageUrl: "",
    ),
    Product(
      name: "hersheys",
      price: 0.4,
      imageUrl: "",
    ),
    Product(
      name: "paçoquinha",
      price: 0.75,
      imageUrl: "",
    ),
    Product(
      name: "schweppes citrus",
      price: 4.0,
      imageUrl: "",
    ),
    Product(
      name: "snacks yes",
      price: 1.5,
      imageUrl: "",
    ),
    Product(
      name: "toddynho",
      price: 2.5,
      imageUrl: "",
    ),
    Product(
      name: "tuffit",
      price: 2.0,
      imageUrl: "",
    )
  ];
}
