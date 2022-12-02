class Category{
  String id;
  String name;
  int price;
  String urlPhoto;

  Category(this.id, this.name,this.price, this.urlPhoto);
}
List<Category> categories = [
  Category('1', 'Chairs', 250,"images/bag_1.png"),
  Category('2', 'Tables', 350,"images/bag_1.png"),
  Category('3', 'Accessories', 450,"images/bag_1.png"),
];