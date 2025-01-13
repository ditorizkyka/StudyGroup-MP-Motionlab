class ProductModel {
  int? id;
  String? name;
  String? desc;
  double? price;
  String? image;
  String? category;
  bool? isFavorite;

  ProductModel(
      {this.id, this.name, this.desc, this.price, this.image, this.category});
}
