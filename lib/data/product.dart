class Product {
  int price;
  String name;
  String img;

  Product({
    required this.price,
    required this.name,
    required this.img,
  });
}
 List<Product> product = [
    Product(img: "assets/img/IPHONE.jpeg", name: "IPHONE", price: 20000),
    Product(img: "assets/img/oppo.jpg", name: "OPPO", price: 15000),
    Product(img: "assets/img/realme.jpg", name: "REALME", price: 6000),
    Product(img: "assets/img/SAMUNGE.jpg", name: "SAMSUNGE", price: 5000),
    Product(img: "assets/img/laptop.jpeg", name: "LAPTOP", price: 10000),
    Product(img: "assets/img/computer.jpeg", name: "COMPUTER", price: 2000),
    Product(price: 2998, name: "TV", img: "assets/img/tv.jpeg")
  ];