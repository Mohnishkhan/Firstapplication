class product{
  late final int id;
  late final String productName;
  late final String productImage;
  late final String productDescription;
  late final double price;
  late bool favourite;

  product( {required this.id, required this.productName, required this.productImage, required this.productDescription,
      required this.price, required this.favourite});
}
