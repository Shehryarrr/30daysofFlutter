class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 13 Pro",
        desc: "Apple iPhone 13th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://p-id.ipricegroup.com/uploaded_328409e1a5a533e62fed458f2c43fc02.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}
