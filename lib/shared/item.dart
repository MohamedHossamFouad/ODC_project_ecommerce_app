
class Item {
  String? imgPath;
  String? price;
  String? nameItem;
  Item({required this.imgPath, required this.price,this.nameItem});
}


  final List<Item> items = [
    Item(
      imgPath: 'assets/images/pic1.png',
      price: "12.99",
      nameItem:"Item 1",
    ),
    Item(
      imgPath: 'assets/images/pic2.png',
      price: "19.99",
      nameItem: "Item 2",
    ),
    Item(
      imgPath: 'assets/images/pic4.png',
      price: "12.99",
      nameItem: "Item 3",
    ),
    Item(
      imgPath: 'assets/images/pic6.png',
      price: "19.99",
      nameItem: "Item 4",
    ),
    Item(
      imgPath: 'assets/images/pic10.png',
      price: "12.99",
      nameItem: "Item 5",
    ),
    Item(
      imgPath: 'assets/images/pic2.png',
      price: "19.99",
      nameItem: "Item 6",
    ),
    Item(
      imgPath: 'assets/images/pic4.png',
      price: "12.99",
      nameItem: "Item 7",
    ),
    Item(
      imgPath: 'assets/images/pic1.png',
      price: "19.99",
      nameItem: "Item 8",
    ),
  ];
