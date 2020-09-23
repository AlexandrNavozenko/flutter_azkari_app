class TypeOfAzkaryModel {
  final String image, title;
  final int id;
  TypeOfAzkaryModel({
    this.id,
    this.image,
    this.title,
  });
}

List<TypeOfAzkaryModel> typeOfAzkaries = [
  TypeOfAzkaryModel(
    id: 1,
    title: "Утром",
    image: 'assets/images/imageType1.jpg',
  ),
  TypeOfAzkaryModel(
    id: 2,
    title: "Вечером",
    image: 'assets/images/imageType2.jpg',
  ),
  TypeOfAzkaryModel(
    id: 3,
    title: "После молитвы",
    image: 'assets/images/imageType3.jpg',
  ),
  TypeOfAzkaryModel(
    id: 4,
    title: "Важные дуа. Часть 1",
    image: 'assets/images/imageType4.jpg',
  ),
  TypeOfAzkaryModel(
    id: 5,
    title: "Важные дуа. Часть 2",
    image: 'assets/images/imageType5.png',
  ),
];
