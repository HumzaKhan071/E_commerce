class MyCartContainerModel {
  String image;

  MyCartContainerModel({
    required this.image,
  });
}

List<MyCartContainerModel> myCartContainerModel = [
  MyCartContainerModel(
    image: "assets/shirt.png",
  ),
  MyCartContainerModel(
    image: "assets/shirt2.png",
  ),
  MyCartContainerModel(
    image: "assets/shirt3.png",
  ),
  MyCartContainerModel(
    image: "assets/shirt4.png",
  ),
];
