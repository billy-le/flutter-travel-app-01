class TouristPlaceModel {
  final String name;
  final String image;

  TouristPlaceModel({required this.name, required this.image});
}

List<TouristPlaceModel> touristPlaces = [
  TouristPlaceModel(name: "Mountain", image: 'assets/mountain.png'),
  TouristPlaceModel(name: "Beach", image: 'assets/beach.png'),
  TouristPlaceModel(name: "City", image: 'assets/city.png'),
  TouristPlaceModel(name: "Forest", image: 'assets/forest.png'),
  TouristPlaceModel(name: "Desert", image: 'assets/desert.png'),
];
