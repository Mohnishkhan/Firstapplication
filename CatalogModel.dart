class CatalogModel{
  static final items=[
    item(
        id: 1,
      name: "apple i phone",
      desc: "Apple iphone 12 th generator",
      price: 999,
      color: "red",
      image:
      "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.vox-cdn.com%2Fthumbor%2FOCYUEEc5odYKWErorN0WNvLa9po%3D%2F0x0%3A2032x1355%2F1200x800%2Ffilters%3Afocal(854x516%3A1178x840)%2Fcdn.vox-cdn.com%2Fuploads%2Fchorus_image%2Fimage%2F70617253%2Fakrales_210917_4760_0175.0.jpg&imgrefurl=https%3A%2F%2Fwww.theverge.com%2F2022%2F3%2F13%2F22975719%2Fiphone-14-pro-max-models-a16-chip-kuo-apple-rumors&tbnid=hZY6o9UclvP92M&vet=12ahUKEwiUyZ323c_5AhUBj9gFHf8oD00QMygBegUIARDmAQ..i&docid=gQf-1OTfiQgTBM&w=1200&h=800&q=images%20iphone&ved=2ahUKEwiUyZ323c_5AhUBj9gFHf8oD00QMygBegUIARDmAQ",
      
    )
  ];

  static item({required int id, required String name, required String desc, required int price, required String color, required String image}) {}
}



class Item {
  late final int? id;
  late final String? name;
  late final String? desc;
  late final num? price;
  late final String? color;
  late final String? image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

Map jsonData = {
  "product": [
    {
      "id": 1,
      "name": "apple i phone",
      "desc": "Apple iphone 12 th generator",
      "price": 999,
      "color": "red",
      "image":
      "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.vox-cdn.com%2Fthumbor%2FOCYUEEc5odYKWErorN0WNvLa9po%3D%2F0x0%3A2032x1355%2F1200x800%2Ffilters%3Afocal(854x516%3A1178x840)%2Fcdn.vox-cdn.com%2Fuploads%2Fchorus_image%2Fimage%2F70617253%2Fakrales_210917_4760_0175.0.jpg&imgrefurl=https%3A%2F%2Fwww.theverge.com%2F2022%2F3%2F13%2F22975719%2Fiphone-14-pro-max-models-a16-chip-kuo-apple-rumors&tbnid=hZY6o9UclvP92M&vet=12ahUKEwiUyZ323c_5AhUBj9gFHf8oD00QMygBegUIARDmAQ..i&docid=gQf-1OTfiQgTBM&w=1200&h=800&q=images%20iphone&ved=2ahUKEwiUyZ323c_5AhUBj9gFHf8oD00QMygBegUIARDmAQ",
    },
    {
      "id": 2,
      "name": "apple i phone",
      "desc": "Apple iphone 12 th generator",
      "price": 1222,
      "color": "red",
      "image":
      "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.vox-cdn.com%2Fthumbor%2FOCYUEEc5odYKWErorN0WNvLa9po%3D%2F0x0%3A2032x1355%2F1200x800%2Ffilters%3Afocal(854x516%3A1178x840)%2Fcdn.vox-cdn.com%2Fuploads%2Fchorus_image%2Fimage%2F70617253%2Fakrales_210917_4760_0175.0.jpg&imgrefurl=https%3A%2F%2Fwww.theverge.com%2F2022%2F3%2F13%2F22975719%2Fiphone-14-pro-max-models-a16-chip-kuo-apple-rumors&tbnid=hZY6o9UclvP92M&vet=12ahUKEwiUyZ323c_5AhUBj9gFHf8oD00QMygBegUIARDmAQ..i&docid=gQf-1OTfiQgTBM&w=1200&h=800&q=images%20iphone&ved=2ahUKEwiUyZ323c_5AhUBj9gFHf8oD00QMygBegUIARDmAQ",
    },
    {
      "id": 3,
      "name": "apple i phone",
      "desc": "Apple iphone 12 th generator",
      "price": 555,
      "color": "red",
      "image":
      "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.vox-cdn.com%2Fthumbor%2FOCYUEEc5odYKWErorN0WNvLa9po%3D%2F0x0%3A2032x1355%2F1200x800%2Ffilters%3Afocal(854x516%3A1178x840)%2Fcdn.vox-cdn.com%2Fuploads%2Fchorus_image%2Fimage%2F70617253%2Fakrales_210917_4760_0175.0.jpg&imgrefurl=https%3A%2F%2Fwww.theverge.com%2F2022%2F3%2F13%2F22975719%2Fiphone-14-pro-max-models-a16-chip-kuo-apple-rumors&tbnid=hZY6o9UclvP92M&vet=12ahUKEwiUyZ323c_5AhUBj9gFHf8oD00QMygBegUIARDmAQ..i&docid=gQf-1OTfiQgTBM&w=1200&h=800&q=images%20iphone&ved=2ahUKEwiUyZ323c_5AhUBj9gFHf8oD00QMygBegUIARDmAQ",
    }
  ]
};
